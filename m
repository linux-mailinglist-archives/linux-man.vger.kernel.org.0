Return-Path: <linux-man+bounces-235-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EB28094EA
	for <lists+linux-man@lfdr.de>; Thu,  7 Dec 2023 22:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BFB728170A
	for <lists+linux-man@lfdr.de>; Thu,  7 Dec 2023 21:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50828840DB;
	Thu,  7 Dec 2023 21:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W4aFR/Q6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 838EFA9
	for <linux-man@vger.kernel.org>; Thu,  7 Dec 2023 13:50:47 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-5c66988c2eeso1077785a12.1
        for <linux-man@vger.kernel.org>; Thu, 07 Dec 2023 13:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701985847; x=1702590647; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EBNy3ImB1s7qMrp6g/q433t1a7hUjmsyXJDE8qHdfO4=;
        b=W4aFR/Q6gyOz6Tn76+hljBBVd2vfu3UFUIyVw4w9UElyRpqzlB+Gjzrj0doYdajtqk
         KPNu9qmWFknz6/yQkFmjSKZNKkdOXfcyNruD8XXt17v73E80XyVW5ikoHcKuKab5CNFT
         gzpaL3E07Skgt7LcWAZINxp9AXjHacLEy3uQAEpHQZw0YIj1+7/vLwNOOCKPZJUMayri
         2/gtu+iHcE2oNsVQurs+49NqXrwcHIAJ94Cs5AV88eeK2wQ7EUVQEAreBtwmxjFXl3ZX
         XksHRU7As/9HrYI6ptJB/CdMKT8hp8FpXtMTiVZMBeiFo+VdWvlP+QPpOHmCMFZtNYYd
         1RAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701985847; x=1702590647;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EBNy3ImB1s7qMrp6g/q433t1a7hUjmsyXJDE8qHdfO4=;
        b=N1PuMemwwHSSXKWXipWJpniYfeA98mzGLYHjpRhxqhpxYZoU+jy9naLlHgD8L04D7y
         /KdBBFTOJgMN8RzVHhkGw3emuN8H6V3wHMaIYYcsZnDNYkbGMk4YdaFK8MaBvKZ6OWMY
         orEmTAmrOkFl+flg+galIuAtqv6ijmhJXx6ny1oC+6evSmcxvupn1ET7UKLaj1JhMccd
         x8R3HqJVfad2miKW7SwfmG0bD2bygZpZv1DyfAKhXQI52bZkqPI71sRfS9SGedZt7IHr
         VCKUxdwPA4rjOg4dLr/zXXtBR4pSUDlMSaBA/q4nKpEDglBPoryHgxyIXJkFMDFQgNqz
         nAOQ==
X-Gm-Message-State: AOJu0YwyV9iwRAE4Sqma7F+h6AC6WfG9NzoaRc8w6zc+jsLrdhV+Kmgd
	v7T6TE6BJZUQmM3IuaNr+pq2cs5yOgk7s+H9OvYaG9rJ
X-Google-Smtp-Source: AGHT+IGFo+UYYKDe65cjDx6CZnHIZmIg70X6f7bb9TvopacRI2viO9i7hQoD7kxaIYW0XnrAu+VW2VPaYNR4/rK6MWs=
X-Received: by 2002:a17:90b:1d11:b0:286:71c6:6b70 with SMTP id
 on17-20020a17090b1d1100b0028671c66b70mr4619272pjb.43.1701985846718; Thu, 07
 Dec 2023 13:50:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231206145132.5538-2-alx@kernel.org> <CAKXok1GQvKi2HiBU89CSd+KF_dd9+mOMVhHrMKAVLLwcyJDN2g@mail.gmail.com>
In-Reply-To: <CAKXok1GQvKi2HiBU89CSd+KF_dd9+mOMVhHrMKAVLLwcyJDN2g@mail.gmail.com>
From: Lee Griffiths <poddster@gmail.com>
Date: Thu, 7 Dec 2023 21:50:35 +0000
Message-ID: <CAKXok1Fdm0aYskE25+DPkiOc194gMLYdJyvVMybZLAUf+uwn1A@mail.gmail.com>
Subject: Fwd: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

(repost to mailing list, as my previous message attempt looked like
plain-text but was actually html)



> Hi Lee!

> Thanks for the report.  After seeing how much frustration it has caused,
> I propose this change.  Does it look good to you?

I don't wish to bike-shed this (as the current man-page is fine by me)
and I have no idea on the style guide used by the man-pages, but if I
was making the change I would replace the 'deprecated' on every
integer specifier with "CAVEAT: SEE BUGS". That way the inexperienced
reader is still frightened into using the function carefully. But if
that kind of thing isn't allowed then the proposed patch looks good to
me.

As a general point: A _lot_ of inexperienced users use this function
to parse user input. At the start of every semester you see an influx
of "why is my use of scanf broken?" posts on the various C and
learn-programming based subreddits, as well as Stackoverflow. I have
no idea why but it seems there's a large body of professors out there
teaching people to use scanf() instead of getc() or fgets() etc, so
I'm of the opinion that the scanf() page needs to be as scary as
possible :)

Again, I know nothing about how man pages are written, but if it was
documentation for legacy code I'd inherited I'm make sure to stress
the following somewhere on the page:

1. scanf() is intended to parse FORMATTED input, i.e. it consumes the
kind of strings produced by printf(), and NOT user input. (I'm not
100% sure if K&R had that as their rationale, but that's the way it's
designed now. Though this might confuse people into thinking they can
use their similar, but not identical, format strings between printf
and scanf!). Currently the word "format" or "formatted" barely
appears. But it's this feature that distinguishes it from the other
parsing functions.
2. Things like fgets() are much better for consuming user input, which
you can then parse with all the other functions.

Thanks,
Lee Griffiths


On Wed, 6 Dec 2023 at 14:52, Alejandro Colomar <alx@kernel.org> wrote:
>
> Several programmers have been confused about this use of 'deprecated'.
>
> Also, maximum field width can be used with these fields to mitigate the
> problem.  Still, it's only a mitigation, since it limits the number of
> characters read, but that means an input of LONG_MAX+1 --which takes up
> the same number of characters than LONG_MAX-- would still cause UB; or
> one can limit that to well below the limit of UB, but then you
> artificially invalidate valid input.  No good way to avoid UB with
> sscanf(3), but it's not necessarily bad with trusted input (and
> strtol(3) isn't the panacea either; strtoi(3) is good, though, but not
> standard).
>
> Try to be more convincing in BUGS instead.
>
> Link: <https://stackoverflow.com/questions/77601832/man-sscanf-d-is-deprecated-in-c-or-glibc/>
> Cc: Lee Griffiths <poddster@gmail.com>
> Cc: Zack Weinberg <zack@owlfolio.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>
> Hi Lee!
>
> Thanks for the report.  After seeing how much frustration it has caused,
> I propose this change.  Does it look good to you?
>
> Thanks,
> Alex
>
>  man3/sscanf.3 | 15 ++-------------
>  1 file changed, 2 insertions(+), 13 deletions(-)
>
> diff --git a/man3/sscanf.3 b/man3/sscanf.3
> index 2211cab7d..4c0bdc318 100644
> --- a/man3/sscanf.3
> +++ b/man3/sscanf.3
> @@ -359,7 +359,6 @@ .SS Conversions
>  and assignment does not occur.
>  .TP
>  .B d
> -.IR Deprecated .
>  Matches an optionally signed decimal integer;
>  the next pointer must be a pointer to
>  .IR int .
> @@ -374,7 +373,6 @@ .SS Conversions
>  .\" is silently ignored, causing old programs to fail mysteriously.)
>  .TP
>  .B i
> -.IR Deprecated .
>  Matches an optionally signed integer; the next pointer must be a pointer to
>  .IR int .
>  The integer is read in base 16 if it begins with
> @@ -387,18 +385,15 @@ .SS Conversions
>  Only characters that correspond to the base are used.
>  .TP
>  .B o
> -.IR Deprecated .
>  Matches an unsigned octal integer; the next pointer must be a pointer to
>  .IR "unsigned int" .
>  .TP
>  .B u
> -.IR Deprecated .
>  Matches an unsigned decimal integer; the next pointer must be a
>  pointer to
>  .IR "unsigned int" .
>  .TP
>  .B x
> -.IR Deprecated .
>  Matches an unsigned hexadecimal integer
>  (that may optionally begin with a prefix of
>  .I 0x
> @@ -409,33 +404,27 @@ .SS Conversions
>  .IR "unsigned int" .
>  .TP
>  .B X
> -.IR Deprecated .
>  Equivalent to
>  .BR x .
>  .TP
>  .B f
> -.IR Deprecated .
>  Matches an optionally signed floating-point number; the next pointer must
>  be a pointer to
>  .IR float .
>  .TP
>  .B e
> -.IR Deprecated .
>  Equivalent to
>  .BR f .
>  .TP
>  .B g
> -.IR Deprecated .
>  Equivalent to
>  .BR f .
>  .TP
>  .B E
> -.IR Deprecated .
>  Equivalent to
>  .BR f .
>  .TP
>  .B a
> -.IR Deprecated .
>  (C99) Equivalent to
>  .BR f .
>  .TP
> @@ -661,8 +650,8 @@ .SS Numeric conversion specifiers
>  programs should use functions such as
>  .BR strtol (3)
>  to parse numeric input.
> -This manual page deprecates use of the numeric conversion specifiers
> -until they are fixed by ISO C.
> +Alternatively,
> +mitigate it by specifying a maximum field width.
>  .SS Nonstandard modifiers
>  These functions are fully C99 conformant, but provide the
>  additional modifiers
> --
> 2.42.0
>

