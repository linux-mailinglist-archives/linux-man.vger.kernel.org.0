Return-Path: <linux-man+bounces-2473-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C2BA38D45
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 21:24:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F4273AD2FE
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 20:24:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB693237A3B;
	Mon, 17 Feb 2025 20:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ran0j/q9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F8A219A8A
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 20:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739823878; cv=none; b=DZjfcZVhTgLx+6v365k7xoW7qrIyCssr331s+Fn8LCWhwTOBwsSSBPOErnk9si5VoUX5RkSYEEjdVI2ifUCqVwycxNzugSARZIiLwSDYTS56NKTrvmsC2+oxRxLxVsPn5b21cW0n3jkgERLPCo5Sy/GiOMEsgo2XMcdagbvKY+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739823878; c=relaxed/simple;
	bh=72X6IrJ8D1n64cSNmS8mUsKIzq7gdYUqpzi8Rk16yr8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Aa+IYO5KaD5dxIG2DNkhgCt7y7nibNF0TY3TKccwYnHJqMLr9KKzAAxVfnVpPbfYRDo+IUrT1yGG7cedSTply3Z1w3FDjTiLJZNg6ilHzhzk488RYTTNa9xC59lT3Eeo2zy/mNtgzNCuvVr3MVzqaqHzqCmqgRBJUtsmRYIsAjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ran0j/q9; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4396f579634so13462355e9.1
        for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 12:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739823873; x=1740428673; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OMYry9RTx8cl19iCCkcnusH45XzhRdnowwtpMen2dyI=;
        b=Ran0j/q9Q1DPhheXUPIz85lMFjuXfu9Wqi18+7XNbfI/w2lajBDfgX9SZyf4P8ipgz
         9wt6ngf9G+jl1PQFAQgU7w+SxYBAuuV6zjnYQ6ZW98BUXTPEBy6qyrGf2ybw5VvsUaks
         wFy0Clq92TRYLuJi5Z9aXEKeoHyI7Awii28IfTvbykjjBixVnxJctmFMnM83w58UJoPm
         gPX2yD6F5v5ioCh9kv3jQ07gzNcuwPknBux5SV2MXRysoRotXDywMymmhDK0T/leoKk+
         pIcT6traYdnIETANkwVftvf+X2AYLRLUL5mNrj3B23NmPm9w5npk4IDUXesVGNdJIOmo
         teYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739823873; x=1740428673;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OMYry9RTx8cl19iCCkcnusH45XzhRdnowwtpMen2dyI=;
        b=oSGK4Uvt7mLf1vd+bQ5HUV1mMPk7Hi/8EF6nM+hy4Z9R3pYYQXbFmnS9k6VS9+edIE
         s+14/QPjouJu0LYiTce/p6YcyOAdJ7vpQXVCKOb4ZuOvk3QVuL2Ene9HXj75y3Tvf0VU
         4BnRkyZZvmBEnwWr+hmzP+RdvrG8Izd4tTIZJdMUovY7IKjGQHo4vbDbxQln73DFxduN
         ZnDg3y2gx5VZ+EL1w+kLNFdRBJFImDK+7ayae9R4MT+nugRdfX8IPGk7Zh5uIoyRt+1S
         lU1hc07WDf6DKmlp/WAl2O3K+UAoQAlByacFMmN2d9lYLsvjcwEfsT/kqd1ijaYwhd6i
         4pfQ==
X-Gm-Message-State: AOJu0YxHw4EY01U6xPxw9ack2iKefniIbWZNGf9nYArpmJo22/2S2cC5
	wE2cZiwU3Z+0BH1Uu2BAvxW1MrrbZg7PiLow03kWr5pTehrvDKms
X-Gm-Gg: ASbGnctO5uK6FgAyPq7Jw9f6QUI7lCMIOlEt9+b6jJxolN5ZblhphMc1UkVxt2bVanZ
	+P6rCLlux7zzP3m4hSmiOdeeIFcTSULh3oJUb+UQuwLsuhgUtpKy786GINtZJN8qNJlvGN3CUTA
	hC/rsSyZvTemd8mhl9ivlaJi8jmdmzwORG8RrlSLV7jkQynQxzVwUz16wHr6+cOZe3Z4laPDIoD
	WRy0X455UBAlsKHmbkxQfBzEx2VCJgW8N+IF6mreZYy8+K3QyJzxZruycb+TpjYT5aIDtERJ5JR
	MwhAlKg2D3kX
X-Google-Smtp-Source: AGHT+IGUAgj894xR9gWG4ljdP0Yg10cuVkcUArq0bn2WHx31pTRLiqawj8Zs26yn/9wXdpQ14aurfw==
X-Received: by 2002:a5d:6991:0:b0:38c:617c:ee2f with SMTP id ffacd0b85a97d-38f33f28662mr9065354f8f.13.1739823873149;
        Mon, 17 Feb 2025 12:24:33 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-38f259f8273sm12835349f8f.89.2025.02.17.12.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 12:24:32 -0800 (PST)
Date: Mon, 17 Feb 2025 21:24:11 +0100
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, branden@debian.org,
	Jason Yundt <jason@jasonyundt.email>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
Message-ID: <20250217.157b556c3b77@gnoack.org>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>

Hi!

On Sat, Feb 08, 2025 at 11:44:40PM +0100, Alejandro Colomar wrote:
> Personally, I prefer tabs for actual programming.  But for manual pages,
> we can live with 4 spaces for $reasons.
> 
> Reported-by: "G. Branden Robinson" <branden@debian.org>
> Reported-by: Jason Yundt <jason@jasonyundt.email>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi Branden, Jason,
> 
> Here's a first iteration of a C coding style.  Please let me know if you
> think something isn't clear enough, or if something would need more
> rationale.
> 
> 
> Have a lovely night!
> Alex
> 
>  CONTRIBUTING.d/style/c | 128 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 128 insertions(+)
>  create mode 100644 CONTRIBUTING.d/style/c
> 
> diff --git a/CONTRIBUTING.d/style/c b/CONTRIBUTING.d/style/c
> new file mode 100644
> index 000000000..2ac09d043
> --- /dev/null
> +++ b/CONTRIBUTING.d/style/c
> @@ -0,0 +1,128 @@
> +Name
> +       style/c - C coding style

"...for code examples in man pages"?

> +
> +Description
> +    Indentation
> +	Use 4 spaces.  Ideally, tabs would be preferred; however, they
> +	cause 5 spaces in manual pages, which is weird, so we use 4
> +	spaces.
> +
> +		if (foo)
> +		    bar();
> +
> +	Indent preprocessor directives after the hash by 1 space.
> +
> +		#ifndef  FOO
> +		# define FOO
> +		#endif
> +
> +	'case' is not indented within a 'switch'.
> +
> +		switch (x) {
> +		case 1:
> +		    foo();
> +		    break;
> +		default:
> +		    break;
> +		}
> +
> +    Line length
> +	Lines should not be longer than 80 columns.

I assume that this is referring to a column limit on the fully
rendered man page, including surrounding indentation?

> +     Except that if they
> +	contain string literals, they can be longer; don't break
> +	user-visible string literals.
> +
> +	When breaking a function prototype, start the continuation line
> +	with 4 spaces.

When we break parameter lists in function prototypes, do we need to
break them in function definitions the same?  I'm asking because it
might make the indentation confusing when it's next to a function body
with the same indentation.  For instance:

void foobar(char *bananas, int oranges, float pineapples,
    int cucumbers) {
    int gherkins;
    int potatoes;

    /* actual code starts here */
}

Now the last parameter and the local variables have the same
indentation and can get confused more easily.


> +
> +	When breaking a function call, align at the opening parenthesis.
> +
> +    Braces and spaces
> +	Use K&R style for braces.  But if the controlling expression of
> +	an if/for/while is broken, the opening brace goes on a line of
> +	its own.
> +
> +		if (foo)
> +		    bar();
> +
> +		if (foooooooooooooooooooooooooo
> +		 || baaaaaaaaaaaaaaaaaaaaaaaaaar)
> +		{
> +		    baz();
> +		}
> +
> +	Treat sizeof() and similar operators as functions, not keywords.
> +	Use a space after keywords, but not after functions.
> +
> +	Use a space to separate binary and ternary operators (except
> +	`.` and `->`), but not to separate unary operators.
> +
> +	Use a space between a cast and the expression it converts.
> +
> +    Naming
> +	Use short names.  Long names should be an exception, and
> +	indicate that something probably isn't well designed.
> +
> +    Functions
> +	Functions should be short and sweet.
> +
> +	All functions should have prototypes.

Like this?

int foobar(int a, int b);

int foobar(int a, int b) {
    return a + b;
}

I don't understand what this duplication would be good for.
Or I am misunderstanding what you meant here. :)

> +
> +    Macros
> +	Don't be worried about using macros.  They can and do improve
> +	safety, if used judiciously.
> +
> +    Error handling
> +	goto is good for error handling.  It's certainly better than the
> +	alternatives most of the time.
> +
> +	Check for explicit error codes (connect(sfd, &sa, len) == -1)
> +	instead of vague comparisons (connect(sfd, &sa, len) < 0).
> +
> +    Includes
> +	Follow include-what-you-use guidelines.
> +
> +    Comments
> +	Comments lie; don't write comments.  If you need to comment
> +	code, do it in the commit message.  If that's not enough, maybe
> +	the code isn't good.
> +
> +	In most cases, a function with an appropriate name is better
> +	than a comment.  A function is also better than a named loop.
> +
> +    Variables
> +	Variable should be declared at the top of the block in which
> +	they are used.  That is, use C89 declarations.  The exception is
> +	loop variables; we use C99 for-loop variable declarations.
> +
> +	The '*' goes with the variable name, not with the type name.
> +	Except if the pointer is qualified, in which case the '*' goes
> +	with the type name.
> +
> +	Variable declarations should be sorted by type-name length, and
> +	then by type-name alphabetic order.  The variable names should
> +	all be aligned.  There should be at least two spaces between a
> +	type name and the variable name.  Declarations should be
> +	separate from statements by a blank line.
> +
> +		int     i;
> +		char    c;
> +		char    *p;
> +		size_t  size;
> +
> +    Dialect
> +	We use the latest GNU C dialect.  Feel free to use new language
> +	features, unless they are evil.
> +
> +See also
> +	For anything not explicitly covered above, you can check the
> +	following coding styles, roughly in order of appearance:
> +
> +	<https://include-what-you-use.org/>
> +	<https://doc.cat-v.org/bell_labs/pikestyle>
> +	<https://www.kernel.org/doc/html/latest/process/coding-style.html>
> +	<https://git.kernel.org/pub/scm/git/git.git/tree/Documentation/CodingGuidelines>
> +	<https://mbsd.evolvis.org/htman/i386/man9/style.htm>
> +	<https://nginx.org/en/docs/dev/development_guide.html#code_style>
> +	<https://google.github.io/styleguide/>
> +	<https://www.gnu.org/prep/standards/standards.html>
> +	<https://www.cis.upenn.edu/~lee/06cse480/data/cstyle.ms.pdf>
> 
> Range-diff against v0:
> -:  --------- > 1:  63bd99658 CONTRIBUTING.d/style/c: Add coding style for the example programs
> 
> base-commit: 6f71d1e4958bd327b4cea006d27a854e66b85380
> prerequisite-patch-id: 1567497bcbaa900493128c86ca25a75f15ecd394
> -- 
> 2.47.2

–-Günther

