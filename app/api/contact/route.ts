import { NextResponse } from 'next/server';

export async function POST(request: Request) {
  try {
    // Parse the request body
    const formData = await request.json();
    
    // Log the form data (Supabase functionality removed)
    console.log('Form submission received:', formData);

    // Return a success response
    return NextResponse.json(
      { success: true, message: 'Form submitted successfully (Supabase functionality removed)' },
      { status: 200 }
    );
  } catch (error) {
    console.error('Error processing request:', error);
    return NextResponse.json(
      { success: false, message: 'Server error' },
      { status: 500 }
    );
  }
}
