Return-Path: <linux-man+bounces-5693-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p0d7HIVFR2p1VAAAu9opvQ
	(envelope-from <linux-man+bounces-5693-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 03 Jul 2026 07:15:49 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7E46FE9F0
	for <lists+linux-man@lfdr.de>; Fri, 03 Jul 2026 07:15:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ZKoe12gu;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5693-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5693-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EFA5D3059FBF
	for <lists+linux-man@lfdr.de>; Fri,  3 Jul 2026 05:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56046352023;
	Fri,  3 Jul 2026 05:03:38 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C7E348C78
	for <linux-man@vger.kernel.org>; Fri,  3 Jul 2026 05:03:23 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783055016; cv=pass; b=sr/p52K//+y9NK1DZjlnQ6fbWt+pS+hxCkUnhdXN72M9jQ+bGIOahZrlkFh7lXtvOO0NsGZ6SdFxFGQAE2bJdR9IdC8j+1cxzcX+QU7eBDdP7opPpoO4oYgN4K7P8+Cxlry/r+nfIVyw78dMx6XlB7vcKwk/SLEF/1gAHi3YcgQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783055016; c=relaxed/simple;
	bh=wbIo4CheEfYd6cDP7eLXUJEVR3GdZjH6ezgWJuwpHp8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RqVnZdglj8kp0d0q6hUPyM42TCBuN9cSZENwVBGKnhlYnvfDhQJPhIrEIUSuC4KK5k3zY0gQDoLDZUyqB35KaEvJqH7UN0CCTNbVAmMKmRs1TfNwh4FsHoRKiGgs8ywY7oRYjXGTUG+lUpRRkwF+3VR77usPbgbnm+YaYwkYtSs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZKoe12gu; arc=pass smtp.client-ip=209.85.167.43
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5aebf162770so1053871e87.1
        for <linux-man@vger.kernel.org>; Thu, 02 Jul 2026 22:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783055000; cv=none;
        d=google.com; s=arc-20260327;
        b=QzGo7KySkvK281/ZeKdjsGBWf3/u7iXcDtEl8fAQyakzIPFbW0qdE5Nzku56hy81v3
         fpkMJ9YoAjmHvkbzviCCv2upDdtIb3ycTmmaRYhGohyYJp/TEpmwnwmj5uIYfA/cp8+F
         MffrYyfVPUcly7NWXqRngZQT+TacMVXQW48Y8WR3LEi3UMMZfwlnmf1gcGafmhWEeWjb
         byab5Uu+OYcyHCRb2Rv/Uy607740sK6zzZ2IKUh32l8vsdVUzMlF6kM7ArpzvuhIEKRy
         N+ybkSuGLKrzTyneiDlqRlpSMsqtuVoL5pDyq07vpKFk7JBD+F7eRozRGycR6RCNQW8I
         fatA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gFhqL0ptcPJW+zoR5lStH6elO8k77vaZ9QPZJ9Axt88=;
        fh=7vbhnJNHS4um5Dp0WTTTZoe5xi4ignAQe/lHFG5XAA4=;
        b=RVeyXzBgqmaHLigwHxL/GZVJhMvraYmvOfYDRuKEgH7Y+OgAfeDyGKXookiXuP7rMt
         yIFOvNS6uvIblIsArIGXBHU2urEyKzEnq+lhIGa5dBCyggdOhlPucH5WcP+5Bf5LZU2z
         ewFWYUbfZkPa68qdAQFoQx0FftJve9mdbox9MowXucoZfByidSS6/S+NpRYH195B53DS
         Qah63DOYnw7bw9/7FSZGqtn1y2dUdVPtZmSGtKBjZEjRnUcF4H6VopQTK6GR7d0Ru8jz
         APkwmjZvWYecEcj3cNFcHzrVXthQLlSmYf8m0/eqTpA7gChgHFPfh8OHfi7yaGpJhZxN
         ZK7Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783055000; x=1783659800; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gFhqL0ptcPJW+zoR5lStH6elO8k77vaZ9QPZJ9Axt88=;
        b=ZKoe12gur+Zmg31gzR/dzc/wa/ELTluEKX/xYQalJ4qJE5jQb3e5+iE3OlrefsMBr9
         x/sbB8b7Fc04dPDtaWCvM6FB4Upszj+cmOinVTMbNivS7z6Ggfj+Ncw+jf6HwGZSHMc1
         nRwgl4VFHxmdx1uHhnzVzLes0knItv++yiq5kiAUTn/T3+jMiN3V00DVjR7vQJ0+/fTh
         WiB++L9UW+7pi9lLYvB9KKDAjBjfKLdGAqEI9cCGKwV/VTKgSYk4yAnIv17wqwkwDnc3
         avQE47QrfOXIk9y7fRT9p/ZZmLk2iIC8OhiHCvKPl1Hba76qdU+LUBy6o35v/oVxqc5p
         PXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783055000; x=1783659800;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gFhqL0ptcPJW+zoR5lStH6elO8k77vaZ9QPZJ9Axt88=;
        b=D3sE6gWlMG1oHlo2C1napM/215ZMzhY2maApkd4ToiocVlMBwEqnz6DpSa7S5BCt5n
         25ppU1Mq/5C8U66oe82J4TNM9YCgqLwFiqOk6o8U1W0WC9TDb9olQDG+A9qf7RxqJVNq
         Udu+tL5Rzz56GwN4tPTsj0ddZLMeExsl3NTULSdLq2Sj3w7BrsIdAIEDRxtBwubmtwal
         xYt9soyE6NJs3C1mERzYGSbPPqPeEkWWLvxne/i8jfBFTmMYSw7cuQssMnKsVHzBFbkO
         ap5/+ui1z98Y0/8VgmwFOEgbS49VtaOoH1kSWSSp8pVVqQVhRnXrG8SQ1WNUU6mtq7y9
         aiiA==
X-Gm-Message-State: AOJu0YwUN24dcGDPHV83uP4Liapo97ikCmaJQqtjcbT1NW1GLafIHhFJ
	NFEHwJLA8b6GamLo7Bx2QSF+yR+847hlCq/Jji3paO5P3WSihaTvsvTCATHGvqm7nPSQkE64FR9
	XnPD5OU3Flr1IrRhSVrAYAB13zoK0yQifWQ==
X-Gm-Gg: AfdE7cnTtOHlMOB/0Q7M40OV6wQbdkyP19BqNTyLN/GcSxsnZ1tTwFGcXXRHYtvHcKs
	h0jd/NH/3QJ4vUBsQJrIMA/pPVx0lZxDMETpEeGH50kUneI9UdGgY5rtrsQzr0d897m4LsRqaL9
	09zKTnqz/wvby6LLxJI6mHeJJJv5wgFDtp4227UWeYxgS2vzStu5iJQac9R6nEthp2bEZVm95ev
	yfx+J24cvpj7JUvWu0krHzBdQPSVbiw8nhLEzWoFU7K6xZ3RYR2J5IxDRUEbbQf8/F/r7H5v3c2
	/F+WnGMRTZED8O+3wohgreBnGQ==
X-Received: by 2002:a05:6512:2305:b0:5ae:aea9:63ef with SMTP id
 2adb3069b0e04-5aecf4d41eamr579346e87.12.1783054999911; Thu, 02 Jul 2026
 22:03:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
In-Reply-To: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
From: Mark Harris <mark.hsj@gmail.com>
Date: Thu, 2 Jul 2026 22:03:05 -0700
X-Gm-Features: AVVi8CcWqGIWmwrplImSJWRGWNayCB2HSa9l8THnqDtwXyZcjbbmgY3Rpnz2-h4
Message-ID: <CAMdZqKEct3eT+Y3-cg5V066hUuo2MzLtjCJPN9uNU4BwUjBFrA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] man/man3/str*.3: NAME: Explain the names
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5693-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,m:serge@hallyn.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp,hallyn.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E7E46FE9F0

Alejandro Colomar wrote:
>
> Reported-by: "Serge E. Hallyn" <serge@hallyn.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>
> Hi Serge,
>
> I finally took some time to do this that you asked me to do some time
> ago.  I've edited all the str*(3) manual pages so that the NAME section
> actually explains the name of the function.
>
> There's an exception: strpbrk(3).  I refuse to explain that name.  I've
> explained it as if it were called strchrs(), which is a name that Plan9
> uses for that function, and which would have been a better name for it.
> (See patch 2/2).
>
>
> Have a lovely day!
> Alex
>
>  man/man3/strcasecmp.3 | 2 +-
>  man/man3/strchr.3     | 2 +-
>  man/man3/strcmp.3     | 2 +-
>  man/man3/strcoll.3    | 2 +-
>  man/man3/strcpy.3     | 2 +-
>  man/man3/strdup.3     | 2 +-
>  man/man3/strerror.3   | 5 +++--
>  man/man3/strfmon.3    | 2 +-
>  man/man3/strfromd.3   | 3 +--
>  man/man3/strfry.3     | 2 +-
>  man/man3/strftime.3   | 2 +-
>  man/man3/string.3     | 5 +----
>  man/man3/strlen.3     | 2 +-
>  man/man3/strncat.3    | 5 +----
>  man/man3/strnlen.3    | 2 +-
>  man/man3/strpbrk.3    | 2 +-
>  man/man3/strptime.3   | 2 +-
>  man/man3/strsep.3     | 2 +-
>  man/man3/strsignal.3  | 2 +-
>  man/man3/strspn.3     | 2 +-
>  man/man3/strtod.3     | 2 +-
>  man/man3/strtoimax.3  | 2 +-
>  man/man3/strtok.3     | 2 +-
>  man/man3/strtol.3     | 2 +-
>  man/man3/strtoul.3    | 2 +-
>  man/man3/strverscmp.3 | 2 +-
>  man/man3/strxfrm.3    | 2 +-
>  27 files changed, 29 insertions(+), 35 deletions(-)
>
> diff --git a/man/man3/strcasecmp.3 b/man/man3/strcasecmp.3
> index aa554341da4c..65941ddf6524 100644
> --- a/man/man3/strcasecmp.3
> +++ b/man/man3/strcasecmp.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strcasecmp 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strcasecmp, strncasecmp \- compare two strings ignoring case
> +strcasecmp, strncasecmp \- strings case-insensitive compare
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strchr.3 b/man/man3/strchr.3
> index 4e6a96d8cde6..12d08f63ddbb 100644
> --- a/man/man3/strchr.3
> +++ b/man/man3/strchr.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strchr 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strchr \- locate character in string
> +strchr \- string search character
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strcmp.3 b/man/man3/strcmp.3
> index a088412917d2..0a573e52d936 100644
> --- a/man/man3/strcmp.3
> +++ b/man/man3/strcmp.3
> @@ -7,7 +7,7 @@
>  .\"
>  .TH strcmp 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strcmp, strncmp \- compare two strings
> +strcmp, strncmp \- strings compare
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strcoll.3 b/man/man3/strcoll.3
> index 32d620f52c51..ea94f2a90224 100644
> --- a/man/man3/strcoll.3
> +++ b/man/man3/strcoll.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strcoll 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strcoll \- compare two strings using the current locale
> +strcoll \- strings collate
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strcpy.3 b/man/man3/strcpy.3
> index cea24ff04020..d4d0e4246545 100644
> --- a/man/man3/strcpy.3
> +++ b/man/man3/strcpy.3
> @@ -5,7 +5,7 @@
>  .\"
>  .TH strcpy 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strcpy, strcat \- copy or catenate a string
> +strcpy, strcat \- string copy/catenate
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strdup.3 b/man/man3/strdup.3
> index b4026ed41b4a..05671cd936c2 100644
> --- a/man/man3/strdup.3
> +++ b/man/man3/strdup.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strdup 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strdup, strndup \- duplicate a string
> +strdup, strndup \- string duplicate
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strerror.3 b/man/man3/strerror.3
> index e3306c7e1608..637d1d812d52 100644
> --- a/man/man3/strerror.3
> +++ b/man/man3/strerror.3
> @@ -7,8 +7,9 @@
>  .\"
>  .TH strerror 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strerror, strerrorname_np, strerrordesc_np, strerror_r, strerror_l \-
> -return string describing error number
> +strerror, strerrorname_np, strerrordesc_np, strerror_r, strerror_l
> +\-
> +string error-string
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strfmon.3 b/man/man3/strfmon.3
> index e0d9790395cb..dee915c8a9f4 100644
> --- a/man/man3/strfmon.3
> +++ b/man/man3/strfmon.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strfmon 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strfmon, strfmon_l \- convert monetary value to a string
> +strfmon, strfmon_l \- string format monetary value
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strfromd.3 b/man/man3/strfromd.3
> index c221f82df0a8..fa8a10feec01 100644
> --- a/man/man3/strfromd.3
> +++ b/man/man3/strfromd.3
> @@ -6,8 +6,7 @@
>  .\"
>  .TH strfromd 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strfromd, strfromf, strfroml \- convert a floating-point value into
> -a string
> +strfromd, strfromf, strfroml \- string from float
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strfry.3 b/man/man3/strfry.3
> index 99917e4a6261..54ea313ea262 100644
> --- a/man/man3/strfry.3
> +++ b/man/man3/strfry.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strfry 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strfry \- randomize a string
> +strfry \- string fry
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
> index 66351f6bd43a..bdba4089b934 100644
> --- a/man/man3/strftime.3
> +++ b/man/man3/strftime.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strftime 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strftime \- format date and time
> +strftime \- string format date and time
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/string.3 b/man/man3/string.3
> index 89fe51fba609..2141822e1fd1 100644
> --- a/man/man3/string.3
> +++ b/man/man3/string.3
> @@ -5,10 +5,7 @@
>  .\"
>  .TH string 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -stpcpy, strcasecmp, strcat, strchr, strcmp, strcoll, strcpy, strcspn,
> -strdup, strfry, strlen, strncat, strncmp, strncpy, strncasecmp, strpbrk,
> -strrchr, strsep, strspn, strstr, strtok, strxfrm
> -\- string operations
> +string \- string operations
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strlen.3 b/man/man3/strlen.3
> index 1dd99bd8e250..639bdd6ac2d2 100644
> --- a/man/man3/strlen.3
> +++ b/man/man3/strlen.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strlen 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strlen \- calculate the length of a string
> +strlen \- string length
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strncat.3 b/man/man3/strncat.3
> index 4b0217b02673..dd39d54939d9 100644
> --- a/man/man3/strncat.3
> +++ b/man/man3/strncat.3
> @@ -5,10 +5,7 @@
>  .\"
>  .TH strncat 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strncat
> -\-
> -append non-null bytes from a source array to a string,
> -and null-terminate the result
> +strncat \- nonstring catenate
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strnlen.3 b/man/man3/strnlen.3
> index fbd719ee4888..553a39a9ec7a 100644
> --- a/man/man3/strnlen.3
> +++ b/man/man3/strnlen.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strnlen 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strnlen \- determine the length of a fixed-size string
> +strnlen \- nonstring length
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strpbrk.3 b/man/man3/strpbrk.3
> index 1f56cf18dbac..6e5b79a48bbe 100644
> --- a/man/man3/strpbrk.3
> +++ b/man/man3/strpbrk.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strpbrk 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strpbrk \- search a string for any of a set of bytes
> +strpbrk \- string search characters
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strptime.3 b/man/man3/strptime.3
> index 979bffea7bf8..4502acfe6d1e 100644
> --- a/man/man3/strptime.3
> +++ b/man/man3/strptime.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strptime 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strptime \- convert a string representation of time to a time tm structure
> +strptime \- string parse time
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strsep.3 b/man/man3/strsep.3
> index 46ba6c5819bd..98859f64909f 100644
> --- a/man/man3/strsep.3
> +++ b/man/man3/strsep.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strsep 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strsep \- extract token from string
> +strsep \- string separate
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strsignal.3 b/man/man3/strsignal.3
> index 4a4e8c86e71d..964a5e5aacaf 100644
> --- a/man/man3/strsignal.3
> +++ b/man/man3/strsignal.3
> @@ -8,7 +8,7 @@
>  .TH strsignal 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
>  strsignal, sigabbrev_np, sigdescr_np, sys_siglist \-
> -return string describing signal
> +string signal description
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strspn.3 b/man/man3/strspn.3
> index fe4414317df6..7c85d209c59d 100644
> --- a/man/man3/strspn.3
> +++ b/man/man3/strspn.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strspn 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strspn, strcspn \- get length of a prefix substring
> +strspn, strcspn \- string [complementary] span
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strtod.3 b/man/man3/strtod.3
> index 15147ee51006..84a9934ba267 100644
> --- a/man/man3/strtod.3
> +++ b/man/man3/strtod.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strtod 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strtod, strtof, strtold \- convert ASCII string to floating-point number
> +strtod, strtof, strtold \- string to float
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strtoimax.3 b/man/man3/strtoimax.3
> index 71267754ed7a..08413a9f8101 100644
> --- a/man/man3/strtoimax.3
> +++ b/man/man3/strtoimax.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strtoimax 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strtoimax, strtoumax \- convert string to integer
> +strtoimax, strtoumax \- string to [u]intmax_t
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strtok.3 b/man/man3/strtok.3
> index 2d733e886086..4ce708ecbcb4 100644
> --- a/man/man3/strtok.3
> +++ b/man/man3/strtok.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strtok 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strtok \- extract tokens from strings
> +strtok \- string tokenize
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strtol.3 b/man/man3/strtol.3
> index f88b717780f3..4d9c49eaf28a 100644
> --- a/man/man3/strtol.3
> +++ b/man/man3/strtol.3
> @@ -7,7 +7,7 @@
>  .\"
>  .TH strtol 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strtol, strtoll, strtoq \- convert a string to a long integer
> +strtol, strtoll, strtoq \- string to long int
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strtoul.3 b/man/man3/strtoul.3
> index a6f6fd4a8ada..670fcb3868a1 100644
> --- a/man/man3/strtoul.3
> +++ b/man/man3/strtoul.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strtoul 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strtoul, strtoull, strtouq \- convert a string to an unsigned long integer
> +strtoul, strtoull, strtouq \- string to unsigned long int
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strverscmp.3 b/man/man3/strverscmp.3
> index d072471b1431..caadb9717a3b 100644
> --- a/man/man3/strverscmp.3
> +++ b/man/man3/strverscmp.3
> @@ -7,7 +7,7 @@
>  .\"
>  .TH strverscmp 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strverscmp \- compare two version strings
> +strverscmp \- strings version compare
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> diff --git a/man/man3/strxfrm.3 b/man/man3/strxfrm.3
> index d4ac57006eb0..a892bf4c813b 100644
> --- a/man/man3/strxfrm.3
> +++ b/man/man3/strxfrm.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH strxfrm 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -strxfrm \- string transformation
> +strxfrm \- string transform
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> --
> 2.53.0
>

The text after the \- is documented as a "summary-description", and
many users and tools (including man -k, apropos, and whatis) rely on
this.  Repeating the function name in a slightly more expanded form is
not only contrary to what users expect, but is much less useful than a
proper summary description.  In most cases the new text does not
provide the summary that users expect from tools like man -k, is
inconsistent with other summaries that might be shown by man -k, and
is not even grammatically correct, making it needlessly difficult to
interpret as a summary or contrast with other summaries to determine
which of several matching functions is desired.

If an expanded form of the function name is useful, it could be added
to the NOTES section.



 - Mark

