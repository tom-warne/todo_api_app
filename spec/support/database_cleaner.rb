require 'database_cleaner'

DatabaseCleaner.strategy = :transaction
DatabaseCleaner.clean_with(:truncation, except: %w(ar_internal_metadata))
