Return-Path: <linux-man+bounces-90-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFED7EFB03
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 22:47:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4379FB20A15
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 21:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E9764F89E;
	Fri, 17 Nov 2023 21:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="DN388+Q+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E58D5D5D
	for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 13:46:49 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-32f7bd27c2aso1772619f8f.2
        for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 13:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700257608; x=1700862408; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U7jqia4bTQIgkNES5+riBxrKJ8hJUXoSfQDvftoV/jU=;
        b=DN388+Q+LZjQ0Dp0dlon5k/RJLJ4WAS6gQYSc8jWH4GbVjNff2zqi9Ow9kVhaC01B+
         7q+gBwmFo9z1dqLVNxFsaHOogoi1PN4+iABSdbUKgLagiv2iOYey4qbfnzmhDMhP9rJJ
         DfOV6ciBkOjTlgXnl+9eDYVW8Qb4kTk9LmkU+PzDL9q7Jhksk9oZ81eXB/tQkHnxEA7K
         ztrBwNeU+CDBY9W2jvIEybcPV0juuf92Det+2EeyiFwcngH4oLX7PGFHQY1yFI34f9sK
         upZL9cY/CANJOlgzYF0cHH4DO3FXGgNDTSH53jK1HhOC9TVd362U+YNt9R3sAABNY9FG
         KArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700257608; x=1700862408;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U7jqia4bTQIgkNES5+riBxrKJ8hJUXoSfQDvftoV/jU=;
        b=RTYCw2pHQnb60lJT4SnhRCQFPXGk4PF3HruXwYfXkesUBqK1j363VvWApm6Vlwrfxz
         bqGaeG/NSUhm2IKPTpS9pwZIqBRLiDg7wJ2ELUtLhtd13kOXVW+Zf45lo990+RxtTmMA
         ze8JPc3psuv6vHlaPEKxK4l+p1ZIioYvA9sr2MPa5/0M7AVZNfaM9WvVrAAs7FULXFV/
         FN/41MUUaGZrAuqbaGaYRHl8PzG9Uz+fFStxPxeK1X+xXNYCNMLBfeywh0Z129aQOPiS
         zmweQ9qsb2VPzLdRcfdpu8ocFuSebxAumI+h5zdkUWxZrThwPv/I21+atKij995OPaop
         2eeQ==
X-Gm-Message-State: AOJu0Yw+MfRPmCc3fmHLQ3uoRjeSHW8Sw0tswH7ymAhlQyl+wO20MW7y
	8aiN6sKJZ9UWdfRBHXJRqAp/VA==
X-Google-Smtp-Source: AGHT+IHL0bV8IMZhGsDg+riy9grqflnMVNzZj5jjFkr3/hAlLt9wNH13hHCM1gq/a7DWnwiAEYFfhA==
X-Received: by 2002:a5d:4352:0:b0:331:6e10:e51d with SMTP id u18-20020a5d4352000000b003316e10e51dmr212219wrr.31.1700257608131;
        Fri, 17 Nov 2023 13:46:48 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id x5-20020adfffc5000000b0032fb17c65desm3432608wrs.19.2023.11.17.13.46.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 13:46:47 -0800 (PST)
Message-ID: <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org>
Date: Fri, 17 Nov 2023 21:46:47 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonny Grant <jg@jguk.org>
Subject: Re: strncpy clarify result may not be null terminated
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
References: <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org> <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com> <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com> <ZUzPNydLkFPEvvsa@debian>
 <20231110160602.352085-1-mattlloydhouse@gmail.com>
 <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
 <bb41a959-eb58-4376-b2b7-6b6ad7a7dd5a@jguk.org> <ZVAB2S-IxKLABk_w@debian>
Content-Language: en-GB
In-Reply-To: <ZVAB2S-IxKLABk_w@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Thank you for your swift replies Alejandro and incorporating changes.

On 11/11/2023 22:36, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Sat, Nov 11, 2023 at 09:15:12PM +0000, Jonny Grant wrote:
>> Alejandro
>>
>> I was reading again
>> https://man7.org/linux/man-pages/man7/string_copying.7.html
>>
>> Sharing some comments, I realise not latest man page, if you have a new one online I could read that. I was reading man-pages 6.04, perhaps some already updated.
> 
> You can check this one:
> 
> <https://www.alejandro-colomar.es/share/dist/man-pages/6/6.05/6.05.01/man-pages-6.05.01.pdf#string_copying_7>
> also available here:
> <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-6.05.01.pdf#string_copying_7>
> 
> And of course, you can install them from source, or read them from the
> repository itself.

That's good if you have your online PDF version of unreleased versions I could read through.
 
>> A) Could simplify and remove the "This function" and "These functions" that start each function description.
> 
> Fixed; thanks.
> 
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=53ea8765ed7f9733abf96e86df89619dc3d203ef>
> 
>>
>> B) "RETURN VALUE" has the text before each function, rather than after as would be the convention from "DESCRIPTION", I suggest to move the return value text after each function name.
> 
> Fixed; thanks.
> 
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=76316bd6f98c58d70c2330f7d2a945aac7c76dd8>
> 
>>
>> Could make it like https://man7.org/linux/man-pages/man3/string.3.html
>>
>> C) In the examples, it's good stpecpy() checks for NULL pointers, the other's don't yet though.
> 
> The reason is interesting.  I also designed a similar function based on
> snprintf(3), which can be chained with this one.  Since that one can
> return NULL, and to reduce the number of times one needs to check for
> errors, I added the NULL check.

That's good, any API that allocates memory could in theory return NULL, like strdup() too.

> alx@debian:~/src/shadow/shadow/master$ grepc -tfd stpeprintf .
> ./lib/stpeprintf.h:inline char *
> stpeprintf(char *dst, char *end, const char *restrict fmt, ...)
> {
> 	char     *p;
> 	va_list  ap;
> 
> 	va_start(ap, fmt);
> 	p = vstpeprintf(dst, end, fmt, ap);
> 	va_end(ap);
> 
> 	return p;
> }
> alx@debian:~/src/shadow/shadow/master$ grepc -tfd vstpeprintf .
> ./lib/stpeprintf.h:inline char *
> vstpeprintf(char *dst, char *end, const char *restrict fmt, va_list ap)
> {
> 	int        len;
> 	ptrdiff_t  size;
> 
> 	if (dst == end)
> 		return end;
> 	if (dst == NULL)
> 		return NULL;
> 
> 	size = end - dst;
> 	len = vsnprintf(dst, size, fmt, ap);
> 
> 	if (len == -1)
> 		return NULL;
> 	if (len >= size)
> 		return end;
> 
> 	return dst + len;
> }
> alx@debian:~/src/shadow/shadow/master$ grepc -tfd stpecpy .
> ./lib/stpecpy.h:inline char *
> stpecpy(char *dst, char *end, const char *restrict src)
> {
> 	bool    trunc;
> 	char    *p;
> 	size_t  dsize, dlen, slen;
> 
> 	if (dst == end)
> 		return end;
> 	if (dst == NULL)
> 		return NULL;
> 
> 	dsize = end - dst;
> 	slen = strnlen(src, dsize);
> 	trunc = (slen == dsize);
> 	dlen = slen - trunc;
> 
> 	p = mempcpy(dst, src, dlen);
> 	*p = '\0';
> 
> 	return p + trunc;
> }
> 
> 
> Then you can use them like this:
> 
> 
> 	    end = buf + sizeof(buf);
>             p = buf;
>             p = stpecpy(p, end, "Hello ");
>             p = stpeprintf(p, end, "%d realms", 9);
>             p = stpecpy(p, end, "!");
>             if (p == end) {
>                 p--;
>                 goto toolong;
>             }
>             len = p - buf;
>             puts(buf);
> 
> 
> Regarding other string-copying functions, NULL is not inherent to them,
> so I'm not sure if they should have explicit NULL checks.  Why would
> these functions receive a null pointer?  The main possibility is that
> the programmer forgot to check some malloc(3) call, which should receive
> a different treatment from a failed copy, normally.

Perhaps it's just my point of view. In safety critical software I always do my best to ensure no code calls an API with the null pointer constant - when it's expecting a valid pointer. Given that the null pointer constant is defined in the C standard, even if APIs have undefined behaviour if they require a pointer but are passed a NULL. So the converse is I make APIs check for NULL (if they require a valid pointer) and reject with an error. Covers all bases (there can be corrupt data files occurring that we can't anticipate), so issues can be logged, and no core dump. I'd rather display a "USB device error 51" message on a UI than suffer a core dump which turns off a piece of safety critical equipment or sends it into a restart death loop.

I recall you mentioned [[gnu::nonnull]] aka __attribute__((nonnull)) which is an optimizer hint the API will always be called with a valid pointer. There is also returns_nonnull.

The difficulty is the optimizer will remove any NULL pointer constant checks within those APIs (if there were any). The side effect is a useful compiler warning, if the compiler figures out someone is passing NULL.

So in a safety critical system we must wrap all such APIs, to put back in the null pointer constant checks.

> 
>> D) strlcpy says
>> "These functions force a SIGSEGV if the src pointer is not a string."
>> How does it determine the pointer isn't a string?
> 
> By calling strlen(src).  If it isn't a string, it'll continue reading,
> and likely crash due to an unbound read.  However, the SIGSEGV isn't
> guaranteed, since it may find a 0 well before crashing, so I removed
> that text.  It is a feature and a bug of these functions: they can find
> programming errors where one passes a character sequence where a string
> is expected, and crash the program to nosily report the programmer
> error.  But that also makes it very slow, as Paul said.

Ok I see what you mean. It's good you took out that line, I recall there was even a raise(SIGSEGV) in the implementation in a previous version of the man page.

I wish programmers would keep track of the length of their strings if they need performance, with the pointer to avoid all these strlen(). So then we'd only need to use strnlen() to sanity check buffers given by external libraries.

There are so may variations on this idea to avoid C-string with NUL terminator.

Using a 'struct sbuf' to contain the string buffer
https://man.freebsd.org/cgi/man.cgi?query=sbuf&apropos=0&sektion=0&manpath=FreeBSD+8.2-RELEASE&format=html

C++ has all it's STL containers like std::string.

Other APIs prefer start_ptr, end_ptr (the one after the last character), probably they should also keep the current allocated buffer size, or always do a realloc() when appending.

Others may think differently, that's fine, not all uses of C are the same target.

>>
>> E) Are these functions mentioned like ustpcpy() standardized by POSIX? or in use in a libc?
> 
> No.  They are my inventions, like stpecpy().  It seems I forgot to add a
> "This function is not provided by any library" in some of them.
> 
> Fixed; thanks.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=9848ac50ceb6cc4d786b3899ee4626959e5f1d81>
> 
>>
>> F) 
>> char *stpncpy(char dst[restrict .sz], const char *restrict src,
>>                       size_t sz);
>> I know the 'restrict' keyword, but haven't seen this way it attempts to specify the size of the 'dst' array by using the parameter 'sz' is this in wide use in APIs? I remember C11 let us specify  char ptr[static 1] to say the pointer must be at least 1 element in this example
> 
> It continues meaning the same thing.  If you use array notation, the
> restrict must be placed inside the brackets.  The following two snippets
> are equivalent C code:
> 
> 	void foo(int *p, int *restrict x);
> 	void foo(int *p, int x[restrict 7]);
> 
> Since I didn't use 'static', to ISO C the array notation is ignored.
> GCC, however, will be reasonable and understand it.  To GCC, there's not
> much difference between the following:
> 
> 	[[gnu::nonnull]]
> 	void bar(int x[7]);
> 	void bar(int x[static 7]);
> 
> And of course, you can combine static and restrict:
> 
> 	void baz(int *p, int x[static restrict 7]);
> 
>>
>> Saw a few pages started to write out functions like
>> size_t strnlen(const char s[.maxlen], size_t maxlen);
>>
>> Is this just for documentation? usually it would be: const char s[static maxlen]
> 
> I don't like static for array parameters.  Specifying a size for a
> parameter should similarly signify to the compiler that it should expect
> no less than N elements.  This is how GCC behaves.
> 
> And static has another implication: nonnull.  IMO, nonnull is tangential
> to array size, and should be specified separately with its own attribute
> or qualifier.  I'd like to be able to specify the following different
> cases:
> 
> 	void f1(int [10]);  //  NULL, or array of size >= 10
> 	void f2(int [_Nonnull 10]);  // Array of size >=10
> 
> With static, I can only do the second.  Quite unreasonable.
> 
> 
> Regarding the '.', consider the following two snippets:
> 
> 	int size;  // This is the size of s[size].
> 	void g1(char s[size], size_t size);
> 
> You could be tricked to think that the size of s[] is the second
> parameter to the function, but it's the global variable size.
> 
> 	void g2(char s[size], size_t size);
> 
> Here's, since there's no global size, the code won't even compile.
> There's no way to use a parameter that comes later as a size, conforming
> to ISO C.  We were discussing this [.identifier] syntax in linux-man@
> and gcc@, as a possible extension.  We haven't yet decided on it, but
> I'm previewing it as a documentation extension for now.  The rationale
> for the syntax comes from similarity with designated initializers for
> structures.

That would be good if it got in ISO C.

>> G) "Because these functions ask for the length, and a string is by
>> nature composed of a character sequence of the same length plus a
>> terminating null byte, a string is also accepted as input."
>>
>> I suggest to adjust the order so it doesn't start with a fragment:
>>
>> "A string is also accepted as input, because these functions ask
>> for the length, and a string is by nature composed of a character
>> sequence of the same length plus a terminating null byte."
>>
>> Could simplify and remove "by nature".
> 
> Yep; thanks.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=78b2ff8c6f25654648f0fa06c310b87a7e49128e>
> 
>>
>> Unrelated man page strncpy, noticed this.
>>
>> SEE ALSO
>> Could this refer to strcpy(3) and string(3) at the bottom?
>> https://man7.org/linux/man-pages/man3/strncpy.3.html
> 
> I removed it on purpose, because I intended to put some distance between
> strncpy(3), and strings and string-copying functions like strcpy(3).
> 
> That's why I point to string_copying(7), where readers should be
> educated of all of the differences.  Then, string_copying(7) has a more
> complete SEE ALSO, because it has already detailed all the different
> functions, and the reader is ready to read the individual pages.
> 
> Kind regards,
> Alex

Fair enough. We've all shared a lot going over strnlen and other points! Man pages are all better as a result of all your efforts.

Kind regards, Jonny

