Return-Path: <linux-man+bounces-2259-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE94AA15A37
	for <lists+linux-man@lfdr.de>; Sat, 18 Jan 2025 01:01:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2974A166A7C
	for <lists+linux-man@lfdr.de>; Sat, 18 Jan 2025 00:01:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1587A10F2;
	Sat, 18 Jan 2025 00:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="BMB7wkld"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A807910F9
	for <linux-man@vger.kernel.org>; Sat, 18 Jan 2025 00:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737158509; cv=none; b=KGmO9+bQ/T0OeYXMSpe88p1APxQVnS2fAtAaL6TOBavahhzWWxrESk5/eDVph8ikCtGzIHhSy3wNo0Cc1Ba8JahMEgS6fRrjcY+W81rDnSrObNSyDRb/L+8PjpjXDhNYEiICR7XpKbQmcETifidYOPvCjr1to4qz+JCS3UvZx8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737158509; c=relaxed/simple;
	bh=0uLVTYLagstaOqwVG0HgMNYNcikrDQZwJCZ5J/dI+5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DunV81KckvIw5pYls0sGcasnJxLMhq+uBIQV04WQ3hYpQpq/ZUo52NfA+MWCPS5bi+/8vDdS363O/HZNndyIVk3535OW0Li1m9H0icLzT3eQk0gpUglskBYTbNC/Z2Juhjf9wYNXZXyyzflu8hRl+pLB/FO+fKqyVp8twgElJk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=BMB7wkld; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737158506;
	bh=0uLVTYLagstaOqwVG0HgMNYNcikrDQZwJCZ5J/dI+5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BMB7wkld90Xhl/GfXp/lm78tHc4z6DrUZeyIFTXS/BkeCBicKaxl2PPFT5FXUuXQN
	 QJdV/biGWd9RYSI8fOTLCSnSuNJbh2Ua84Rj22yJeNYgoGDqywn7rBWEjBgGnRwngG
	 TwUPI3lwHodUhzFCmTvk356TJdSl7vNP1T2Z86CVBfZNDXLjoLIYJkCLEVTjQO3EzW
	 Md22ZJ2NGDrM7W2xOXYr+QHZsYOjpsbfDLhf1VtB1Z5BTPIUWdrZorRYcYKx1lPgtY
	 C1Gmv8nchIcWTQ/DsxeVRB2w1wChLcb2jgJZPxcrNxQsha6hrcKhBMIbZduYi6QVPy
	 ZQ0YGqUWFApmA==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id A6F617E250;
	Fri, 17 Jan 2025 19:01:46 -0500 (EST)
Date: Fri, 17 Jan 2025 19:01:46 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>

On Fri, Jan 17, 2025 at 03:14:55PM +0100, Alejandro Colomar wrote:
> Curiously, my system is also limited to 255 for tmpfs filesystems but
> yours is not?  I still get longer paths rejected.

That was my mistake.  Running your program confirms that tmpfs filenames
are limited to 255 bytes as well.  I had originally assumed that /tmp
was tmpfs on my system, but it was actually bcachefs which has a
_PC_NAME_MAX of 512.

> Doesn't iconv(3) terminate its output?  I've never used that API, so I
> don't know.

I thought that at first because I hadn’t ever used iconv(3) either.  I
created a test program in order to make sure that it doesn’t terminate
its output:

	$ cat iconv_termination_test.c
	#include <err.h>
	#include <iconv.h>
	#include <langinfo.h>
	#include <locale.h>
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include <uchar.h>

	#define NELEMS(a)  (sizeof(a) / sizeof(a[0]))


	void
	display_memory(char *memory_block, size_t len) {
	    for (size_t i = 0; i < len; i++) {
	        printf("%02hhX ", memory_block[i]);
	    }
	    printf("\n");
	}

	int
	main(void)
	{
	    char32_t utf32_pathname[] = U"example";
	    size_t pathname_len = NELEMS(utf32_pathname) - 1;
	    size_t utf8_pathname_size = pathname_len * 4 + 1;
	    char *utf8_pathname = malloc(utf8_pathname_size);
	    if (utf8_pathname == NULL) {
	     err(EXIT_FAILURE, "calloc");
	    }
	    memset(utf8_pathname, 0xFF, utf8_pathname_size);
	    printf("utf8_pathname before calling iconv: ");
	    display_memory(utf8_pathname, utf8_pathname_size);

	    iconv_t cd = iconv_open("UTF-8", "UTF-32");
	    if (cd == (iconv_t) - 1) {
	        err(EXIT_FAILURE, "iconv_open");
	    }
	    char *inbuf = (char *) utf32_pathname;
	    size_t inbytesleft = pathname_len * (sizeof *utf32_pathname);
	    char *outbuf = utf8_pathname;
	    size_t outbytesleft = utf8_pathname_size;
	    size_t iconv_result;
	    while (inbytesleft > 0) {
	        iconv_result =
	            iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);
	        if (iconv_result == -1) {
	            err(EXIT_FAILURE, "iconv");
	        }
	    }
	    iconv_result =
	        iconv(cd, NULL, &inbytesleft, &outbuf, &outbytesleft);
	    if (iconv_result == -1) {
	        err(EXIT_FAILURE, "iconv");
	    }
	    if (iconv_close(cd) == -1) {
	        err(EXIT_FAILURE, "iconv_close");
	    }

	    printf("utf8_pathname after calling iconv: ");
	    display_memory(utf8_pathname, utf8_pathname_size);

	    free(utf8_pathname);
	    exit(EXIT_SUCCESS);
	}
	$ gcc -Wall iconv_termination_test.c
	$ ./a.out
	utf8_pathname before calling iconv: FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF
	utf8_pathname after calling iconv: 65 78 61 6D 70 6C 65 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF
	$

