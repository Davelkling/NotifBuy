import { createClient } from "@supabase/supabase-js";

const supabaseUrl = process.env.NUXT_PUBLIC_SUPABASE_URL;
const supabaseAnonKey = process.env.NUXT_PUBLIC_SUPABASE_KEY;

if (!supabaseUrl || !supabaseAnonKey) throw new Error("Supabase Problem!");

export const supabase = createClient(supabaseUrl, supabaseAnonKey);
