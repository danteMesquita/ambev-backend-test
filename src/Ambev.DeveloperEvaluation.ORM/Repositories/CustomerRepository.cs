﻿using Ambev.DeveloperEvaluation.Domain.Entities.Sales;
using Ambev.DeveloperEvaluation.Domain.Repositories;
using Microsoft.EntityFrameworkCore;

namespace Ambev.DeveloperEvaluation.ORM.Repositories
{
    /// <summary>
    /// Implementation of ICustomerRepository using Entity Framework Core
    /// </summary>
    public class CustomerRepository : ICustomerRepository
    {
        private readonly DefaultContext _context;

        /// <summary>
        /// Initializes a new instance of CustomerRepository
        /// </summary>
        /// <param name="context">The database context</param>
        public CustomerRepository(DefaultContext context)
        {
            _context = context;
        }

        /// <summary>
        /// Creates a new customer in the database
        /// </summary>
        /// <param name="customer">The customer to create</param>
        /// <param name="cancellationToken">Cancellation token</param>
        /// <returns>The created customer</returns>
        public async Task<Customer> CreateAsync(Customer customer, CancellationToken cancellationToken = default)
        {
            await _context.Customers.AddAsync(customer, cancellationToken);
            await _context.SaveChangesAsync(cancellationToken);
            return customer;
        }

        /// <summary>
        /// Retrieves a customer by its unique identifier
        /// </summary>
        /// <param name="id">The unique identifier of the customer</param>
        /// <param name="cancellationToken">Cancellation token</param>
        /// <returns>The customer if found, null otherwise</returns>
        public async Task<Customer?> GetByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await _context.Customers
                .FirstOrDefaultAsync(c => c.Id == id, cancellationToken);
        }

        /// <summary>
        /// Updates an existing customer in the database
        /// </summary>
        /// <param name="customer">The customer to update</param>
        /// <param name="cancellationToken">Cancellation token</param>
        /// <returns>The updated customer</returns>
        public async Task<Customer> UpdateAsync(Customer customer, CancellationToken cancellationToken = default)
        {
            _context.Customers.Update(customer);
            await _context.SaveChangesAsync(cancellationToken);
            return customer;
        }

        /// <summary>
        /// Deletes a customer from the database
        /// </summary>
        /// <param name="id">The unique identifier of the customer to delete</param>
        /// <param name="cancellationToken">Cancellation token</param>
        /// <returns>True if the customer was deleted, false if not found</returns>
        public async Task<bool> DeleteAsync(Guid id, CancellationToken cancellationToken = default)
        {
            var customer = await GetByIdAsync(id, cancellationToken);
            if (customer == null)
                return false;

            _context.Customers.Remove(customer);
            await _context.SaveChangesAsync(cancellationToken);
            return true;
        }

        /// <summary>
        /// Retrieves all customers with optional filtering and pagination
        /// </summary>
        /// <param name="page">The page number (1-based)</param>
        /// <param name="pageSize">The number of items per page</param>
        /// <param name="cancellationToken">Cancellation token</param>
        /// <returns>A list of customers for the specified page</returns>
        public async Task<IEnumerable<Customer>> GetAllAsync(int page, int pageSize, CancellationToken cancellationToken = default)
        {
            return await _context.Customers
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync(cancellationToken);
        }
    }
}