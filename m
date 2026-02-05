Return-Path: <linux-man+bounces-5039-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCDEA2fOhGk45QMAu9opvQ
	(envelope-from <linux-man+bounces-5039-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 18:07:51 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 66187F5A99
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 18:07:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 837A5300B106
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 17:01:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38452D6E5A;
	Thu,  5 Feb 2026 17:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XLQVqF8t"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394222C21ED
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 17:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770310908; cv=pass; b=lgoavsuQxDW1h1wi0N6v6BRVYIfIrhSEh8wflop9x1TQs/JAfKmiyLyVLc8kyCRGGjJw2Qr3jO1NnFr50SNELA+AdV33jTc7/MhkhF0YMdXSh47zn/mSdUWhwjiHkDhAm6x1w28mlOkOKsHdwbKbtE48Q7PzIkb45OG8rcKyX2Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770310908; c=relaxed/simple;
	bh=zHExh9nBfkhbWr30/t9NTBFRnGV3LuhGeP0O2keNuGA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rJlyNPRiLH1B3D9Z7d8o0HqNCRdmLJKFgyYv1kyewqc0tjHz1E26+y3yoaX0GDHCjZ0dDvPKCI9PyV4dmr7Pj7zHtTHrur5WyT5g7uWoqAqogyUWJe6/xGkZ4JHuyqBZxI8TmdL4vTKd5Mj64DolZ6wyjjfAlSVQvBUzmLSB2s8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XLQVqF8t; arc=pass smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-385c7507bc0so10988211fa.1
        for <linux-man@vger.kernel.org>; Thu, 05 Feb 2026 09:01:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770310906; cv=none;
        d=google.com; s=arc-20240605;
        b=TVj+o5jvLQiTVp3ZJvRYA9Uw+phGvZwPrx+0LOf5zMhYHC/iYUPxcUaE/8lUeF4/l0
         fq7y6PuhQcGgCvx88wn3TbdJZazc7H4yDK7AQRWomq0eFFP4mE+PS6OGeZwXShG7U6th
         od5kZPEYJSKRK/1zIllJz+ySSgyfbHvqSiYNNypfQ+vN9X1kQfmRSdfreOiYK50a+Yuj
         2mJN3ljd07hGZx3Gak7CxmE4QJUbYajp0uoKfhWTCy9Ug0zLTaM8xFGgOk8yIGiaEfQ/
         MV+xsnfciSV6S5u6ogkflotAjVICGR1O0mv5HcgxH2rEgd3ZViHJAgTdb34oYzeeyuIs
         bpXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I3GYPQ0Nx6jqf4sP2YhY79ccbm9Xa662IzN3q+2lBUE=;
        fh=kTbk4pccRQ7ywKItoF6eFeVMUIye+84NI5zbIP4rQ9Q=;
        b=VQ1fn6HXdSm/lN45OdmSUatRq/0Am51YH+pi/vMxEWwOn1bk2FUbrIfhlxDFRhhgHz
         PpJYp/VGazJoqUoUrjnm8cYeqGLbiXyv/akzkmbrV4WHkyCHWgO7XY5leKop782b26Jr
         s6W3nVqTmIZ/lmC89HK5w4UA38r4adY42GDg113ETkdwKXnBezee4oStrzUdrF2PbKlp
         Sff9T96CJT//9cIM1c0lIvxZh7HEEfVx0QKpsGzA5SWrwUBYYnbD9WUJQZvKpT2p9iav
         kYUVFMxFKbaBlYBH9MWfESl7ZoQsKLcMjVKr616mrVh3BvgSpsTo+AMceSArVU6DE8Sn
         CCGQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770310906; x=1770915706; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I3GYPQ0Nx6jqf4sP2YhY79ccbm9Xa662IzN3q+2lBUE=;
        b=XLQVqF8t+YtYWS0ZuPQKf5Yco+Fn8CVfS4pOU1yG4cTmAu6soZ9ULbamtUku3gobUf
         1yIqfdE5xkH7NZ0gOMrE+Faa+PDo4D+MlUEZ6/GQ0RmArpkghf0Bs6rouDapHvaQr1pG
         VRLEtzwI0q+g1ROgLoMZxiqeja6Cbo6upnroUgNoLhlw5Al4/cGQUDtPlrpsSJjafR0E
         NVOzqXt+M//1LCyWp5HvwhlZaYCClJisZRjF01Cmcmigxab8CmIa1Yt+pgDjZGZ0CqlS
         rHkmUWw2PvDyXFQYtvlvUYgpLOBxjcvepYbNtw6MnIPsIzhoRZBXar+0n/yr0EqpO9D0
         hinQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770310906; x=1770915706;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I3GYPQ0Nx6jqf4sP2YhY79ccbm9Xa662IzN3q+2lBUE=;
        b=HZNZO6J35bKvN9MTmEhW1MxrIJfZbT0Q+jYSw9yn4ZgPQTtFxyNs6EGM0s2QNqTRg5
         rSqqNdMeq44b0f06UOesi8lo1uv7xqSbnD0JYhbPvrNsN9EuJYq88bjYCbsfCQ1Nqnk2
         MpluQN1J1upqJ7SGX60I2OoODG5kyVfMAavXbKd2Wfus6Qprud2q3yQrH8zLNvgmxtJe
         Ua/xxAfkXie2LAdPm+JOHANxpNfhjctR4VRY2mlot6+vK4Rh6aBtJghpW8GhbnN2saie
         kLCy78y5YoF68m2pz9Vwv9H1KUUYS1gBa9nbDqWccnWE+tK/S181hwPwhtG8Jzut/iGj
         ezLg==
X-Gm-Message-State: AOJu0Yz02f75KUtfADXGPKerYlc1D/1Y0idzI0wsc0DVAfbK8CvJYqft
	0N1ksfH673prmIliR6BBdy2Sfm8GvUF0gd6gWwL5YRQ0j9oC7c5OtZ9VRjtjZI3+EDxzROP8qQI
	mw+sDmE0dSVE6M2P+j9RHw2L31K20EKHPMA==
X-Gm-Gg: AZuq6aLwzkAq/5LPujQQ5NeDSbFpZ3yFDVxgfE607PDBjJIIA/8v8aXJEUTKTIEq0RA
	m505Io8puXEK74gJfbq+nFohv9m85iGCgAfilWYjsi75k+cNRUrot63ERB7fu5gf3YUVXH8fhfQ
	lWixHK1w9/hygcU7xl82XyGPK8klfAxb2PP1UeSoY9wJtrpuYfWWMBHfS0ASIQyHWNvISfyMGJ6
	gz+TBGfyggUhRJFZRF0DGUjso3Z0nSB9wGEIQ03r2h/tOOM7tH290zd7yDwnpthFv46TcbFAIpi
	j8EJS14lXXc4/o8izHf9RaYj27YnWhMi1Yk=
X-Received: by 2002:a2e:ab0f:0:b0:383:1cd4:db91 with SMTP id
 38308e7fff4ca-386a1009c36mr12011671fa.11.1770310905986; Thu, 05 Feb 2026
 09:01:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
In-Reply-To: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
Date: Thu, 5 Feb 2026 09:01:34 -0800
X-Gm-Features: AZwV_Qj86k9LJ6-kWDLZlWHApsMBg7SfcEVVGXInedbGKCDLm5sjAg2Gk8OR3iU
Message-ID: <CAMdZqKHXSJE5ZfmJZcOZqEYx-6ZoE22tQji501o6Yyf-gHgogQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] man/man7/feature_test_macros.7: Add _ISOC23_SOURCE, _ISOC2X_SOURCE
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5039-lists,linux-man=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sourceware.org:url,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 66187F5A99
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 Mark Harris wrote:
>
> _ISOC2X_SOURCE has been recognized since glibc 2.31 (2020).[1]
> _ISOC23_SOURCE has been recognized since glibc 2.40 (2024).[2]
>
> [1] <https://sourceware.org/git/?p=glibc.git;a=commit;h=777d75fbc07b>
> [2] <https://sourceware.org/git/?p=glibc.git;a=commit;h=42cc619dfbc4>
>
> Signed-off-by: Mark Harris <mark.hsj@gmail.com>
> ---
>  man/man7/feature_test_macros.7 | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/man/man7/feature_test_macros.7 b/man/man7/feature_test_macros.7
> index f0d4a51f2..a0c97f2c5 100644
> --- a/man/man7/feature_test_macros.7
> +++ b/man/man7/feature_test_macros.7
> @@ -358,6 +358,24 @@ .SS Feature test macros understood by glibc
>  .I \-std=c11
>  produces the same effects as defining this macro.
>  .TP
> +.BR _ISOC23_SOURCE " (since glibc 2.40)"
> +Exposes declarations consistent with the ISO C23 standard.
> +.IP
> +Since glibc 2.31, an equivalent macro named
> +.B _ISOC2X_SOURCE
> +was recognized
> +(because the C23 standard had not then been finalized).
> +Although the use of this macro is obsolete, glibc continues
> +to recognize it for backward compatibility.
> +.IP
> +Defining
> +.B _ISOC23_SOURCE
> +also enables C11, C99, and C95 features.
> +.IP
> +Invoking the C compiler with the option
> +.I \-std=c23
> +produces the same effects as defining this macro.
> +.TP
>  .B _LARGEFILE64_SOURCE
>  Expose definitions for the alternative API specified by the
>  LFS (Large File Summit) as a "transitional extension" to the
> @@ -692,6 +710,8 @@ .SS Default definitions, implicit definitions, and combining definitions
>  .BR _ISOC99_SOURCE ,
>  .B _ISOC11_SOURCE
>  (since glibc 2.18),
> +.B _ISOC23_SOURCE
> +(since glibc 2.40),
>  .BR _POSIX_SOURCE ,
>  .BR _POSIX_C_SOURCE  ,
>  .BR _XOPEN_SOURCE ,
> @@ -876,6 +896,10 @@ .SS Program source
>      printf("_ISOC11_SOURCE defined\[rs]n");
>  #endif
>  \&
> +#ifdef _ISOC23_SOURCE
> +    printf("_ISOC23_SOURCE defined\[rs]n");
> +#endif
> +\&
>  #ifdef _XOPEN_SOURCE
>      printf("_XOPEN_SOURCE defined: %d\[rs]n", _XOPEN_SOURCE);
>  #endif
> --
> 2.52.0
>

Ping on these 4 patches:

[PATCH 1/2] man/man7/feature_test_macros.7: Add _ISOC23_SOURCE, _ISOC2X_SOURCE
[PATCH 2/2] man/man7/feature_test_macros.7: Drop _ISOC9X_SOURCE
(https://lore.kernel.org/linux-man/c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com/T/)

[PATCH v3 1/2] man/man3/timespec_get.3: Refactor to prepare for new time bases
[PATCH v3 2/2] man/man3/timespec_get.3: Add ISO C23 time bases
(https://lore.kernel.org/linux-man/ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com/T/#u)


 - Mark

