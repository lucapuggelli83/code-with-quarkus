1. creare uno script sql da inserire nel file init.sql per creare una tabella chiamata "users" con i seguenti campi:
   - id (intero, chiave primaria, autoincrementante)
   - username (stringa, unico, non nullo)
   - password (stringa, non nullo)
   - email (stringa, unico, non nullo)
   - created_at (timestamp, non nullo, valore predefinito corrente)
2. creare lo script da inserire nel file init.sql per popolare la tabella "users" con almeno un record di esempio:
   - id: 1, username: "user1", password: "password1", email: "email@test.com", created_at: valore corrente.
3. assicurarsi che il file init.sql sia eseguito all'avvio del database per creare la tabella "users".
4. creare una chiamata REST API e tutto il codice necessario (JDBC / Panahce) per leggere la lista degli utenti dalla tabella "users" e restituirla in formato JSON.
5. creare una chiamata REST API e tutto il codice necessario (JDBC / Panache) per cercare un utente nella tabella "users" in base all'id fornito, restituendo l'utente trovato in formato JSON.
6. creare una chiamata REST API e tutto il codice necessario (JDBC / Panache) per aggiungere un nuovo utente alla tabella "users" con i dati forniti in input, restituendo l'utente creato in formato JSON.
7. creare una chiamata REST API e tutto il codice necessario (JDBC / Panache) per aggiornare un utente esistente nella tabella "users" con i dati forniti in input, restituendo l'utente aggiornato in formato JSON.
8. creare una chiamata REST API e tutto il codice necessario (JDBC / Panache) per eliminare un utente dalla tabella "users" in base all'id fornito, restituendo un messaggio di conferma in formato JSON.
