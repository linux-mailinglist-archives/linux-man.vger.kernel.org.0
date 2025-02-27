Return-Path: <linux-man+bounces-2530-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81016A47C14
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 12:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 103153B6EBA
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 11:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A368422A4D1;
	Thu, 27 Feb 2025 11:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I1wNvwLZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812A61DC997
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 11:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740655439; cv=none; b=L3SILTUn0F097HvWof/bkUBSuiLkmfCdxNLodXUtLUPz7UdGGbD9DRsEo0sXhneak8FFF4rvARv2bsrQZmFi7xa1Eea5jEy5qnkDVvmLe7S7LcGwgTx63aXtrPW7tWVnR/RasRyvaatg5nN52dTUXVP9/3Qm4tuDe1W+0zV5P1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740655439; c=relaxed/simple;
	bh=UVJQ1FjXhpmi14JUL1mw2XoJE4lidgJiG1N4rvOvO74=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NhdfkD56tY3xr78++KS10xxYjJ08ULW9YfX7Pk7F7KzTgBO0cqBWMzpeOD7L0eqmtzTJupXk1h+MWhgCn5f86alD6Id/WxupR6Mykwb6fOckIfLFZiYVNL90C9llWjyntdZooyqx6RgW0Cwr5R5widsEgsALIwyfBAQslmZRHq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I1wNvwLZ; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-439a2780b44so5232945e9.1
        for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 03:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740655436; x=1741260236; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rayzHkJ+GmdzanJjuFt1xZXqHIVMzW59N2N85UIdkqU=;
        b=I1wNvwLZviGeCdUaULr0wbRIOn1sJ6uIFWuCyMWXR2RJb7ELKfR3F16w6Foqq0bC6M
         vTNgR+98synqxDt8x5dVTQEb8Wfz2qkUv1EWc3Uu+s97VtYQng1rxf4iDXO2evxAMpL9
         F+8Gdq5dgsEVkj2VFm1BBUG+NwaYFZ1zwjHc6Hg97B1mlGCqkg7mqQekloxsBeVVZ6no
         mG+c2ViJtFsN6hjh6QAUmObgmtYKbn+h6w19YDyeRyzl/2ZT4akP/EHSgl/TyfsBrySK
         uLYg9ZabA7PEgbmHd07aGKYh5PMmO/UGL850Hm7rlmDOSdg8wQm7bMy8wIo+gn/RJXtV
         uZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740655436; x=1741260236;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rayzHkJ+GmdzanJjuFt1xZXqHIVMzW59N2N85UIdkqU=;
        b=jeHZyBHXo5E0Sogq9jj/iCIpL5B5xaWIuWQcVnDSjrPkWg/KMNnEHJptZCp5l2S4BS
         YrktSZXIf3npoCeFoumLqR1hFz4qWce+1j1OIBbZWlDBEkCoaHF5l+w0QEcuMiii9O/7
         tXTLI5dIpUyHi9FLdD5rgc4EIOtQYcakcVVimxgNufx27OJxdseojMQvRHfsgZ+dUU7N
         o+z8icPAbi6ChmKrzv6Bc94WvV+pnohZkeQNWTFBfibZk7IyUFdfzLSme+3MRT45T/FV
         74c+8kW5hoQG7S4rzgAIELeUetC5MptXogoOLF8Rbq7OwdEfJTSZcw23rOy3RXPzgKCX
         9nHw==
X-Gm-Message-State: AOJu0YyMtOD938O0+sUkm/TAZfB+7m9VlZrnCIWTltv2ivQsntIof61W
	+ehnKWMj/T3AxTdkb9e1Sf0RhrkNphpeqwRfdZ+W7piihESjx2ra
X-Gm-Gg: ASbGncs3RxJA7IQaNwpROd6pN2DdlH2YHWWFPmcX2dI3HrglDVD6OC0c6UnCBJLvK5u
	E1RWpYrkPVIAZsLD3dWxfzLmDEjg1DqJeuGwQbjRINPWdt7JMey12jYtsa8mHEeHk0idT+7vDhr
	/rKvfusBlibCoo2ZPfQUaqzpTx5J83/UmAU3m/Hmmpv6FHeBvyECcDT8ACX6CMnoAhv5j+TS97w
	ZrFFTz3LhkHClG45CRm2Gt4gfgwyrV1nJTOHwcutqJ6/pMJcW8XWgx/qNGOBE70Gv9qDYvy7D/p
	OYDYtSLf6vwhlhEy
X-Google-Smtp-Source: AGHT+IFPLmN3EAFuTQRJOTQl/yNbD5yB8hpAsRYPaYaGF9+UKAq/qSuqiIkT6Q413ZtTjhr6gU6Rmg==
X-Received: by 2002:a05:600c:1c03:b0:439:8a62:db42 with SMTP id 5b1f17b1804b1-43ab8fd8e71mr59042815e9.8.1740655435375;
        Thu, 27 Feb 2025 03:23:55 -0800 (PST)
Received: from nz.home ([2a00:23c8:a613:101:2204:db8d:4c76:9ba])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba4c345asm54338965e9.0.2025.02.27.03.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 03:23:54 -0800 (PST)
Received: by nz.home (Postfix, from userid 1000)
	id 6568B29B55F054; Thu, 27 Feb 2025 11:23:54 +0000 (GMT)
Date: Thu, 27 Feb 2025 11:23:54 +0000
From: Sergei Trofimovich <slyich@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
Message-ID: <Z8BLSuhHpNxGgg0y@nz.home>
References: <20250227092142.1822609-1-slyich@gmail.com>
 <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>

On Thu, Feb 27, 2025 at 11:23:46AM +0100, Alejandro Colomar wrote:
> Hi Sergei,
> 
> I'm CCing Boris, since he had the opposite problem, which triggered
> adding the stray '\'.
> 
> On Thu, Feb 27, 2025 at 09:21:42AM +0000, Sergei Trofimovich wrote:
> > Without the change build process complains
> > 
> >     $ LANG=C make -R help
> >     grep: warning: stray \ before #
> >     grep: warning: stray \ before #
> 
> I can't reproduce.  What's your version of grep(1) and your version of
> make(1)?
> 
> 	alx@debian:~/src/linux/man-pages/man-pages/contrib$ make -R help
> 	make: warning: undefined variable 'GNUMAKEFLAGS'
> 	To see a list of targets, run:
> 		$ make -R -p nothing \
> 		| grep '^\.PHONY:' \
> 		| tr ' ' '\n' \
> 		| grep -v '^\.PHONY:' \
> 		| sort;
> 
> 	To see a list of variables, run:
> 		$ find GNUmakefile share/mk/configure -type f \
> 		| sort \
> 		| xargs grep '^[^[:space:]].*?=' \
> 		| sed 's/=.*/=/';
> 
> 	To see a list of dependencies (package/program), run:
> 		$ find share/mk/configure/build-depends -type f \
> 		| sed 's,share/mk/configure/build-depends/,,' \
> 		| sed 's,\.mk,,' \
> 		| sort;
> 
> 	alx@debian:~/src/linux/man-pages/man-pages/contrib$ LANG=C make -R help
> 	make: warning: undefined variable 'GNUMAKEFLAGS'
> 	To see a list of targets, run:
> 		$ make -R -p nothing \
> 		| grep '^\.PHONY:' \
> 		| tr ' ' '\n' \
> 		| grep -v '^\.PHONY:' \
> 		| sort;
> 
> 	To see a list of variables, run:
> 		$ find GNUmakefile share/mk/configure -type f \
> 		| sort \
> 		| xargs grep '^[^[:space:]].*?=' \
> 		| sed 's/=.*/=/';
> 
> 	To see a list of dependencies (package/program), run:
> 		$ find share/mk/configure/build-depends -type f \
> 		| sed 's,share/mk/configure/build-depends/,,' \
> 		| sed 's,\.mk,,' \
> 		| sort;
> 
> 	alx@debian:~/src/linux/man-pages/man-pages/contrib$ make --version
> 	GNU Make 4.4.1
> 	Built for x86_64-pc-linux-gnu
> 	Copyright (C) 1988-2023 Free Software Foundation, Inc.
> 	License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
> 	This is free software: you are free to change and redistribute it.
> 	There is NO WARRANTY, to the extent permitted by law.
> 	alx@debian:~/src/linux/man-pages/man-pages/contrib$ grep --version
> 	grep (GNU grep) 3.11
> 	Copyright (C) 2023 Free Software Foundation, Inc.
> 	License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
> 	This is free software: you are free to change and redistribute it.
> 	There is NO WARRANTY, to the extent permitted by law.
> 
> 	Written by Mike Haertel and others; see
> 	<https://git.savannah.gnu.org/cgit/grep.git/tree/AUTHORS>.
> 
> 	grep -P uses PCRE2 10.45 2025-02-05
> 

Aha, I wonder if it's also related to the escaping behaviour of `sh` and `bash.
Here are my tool versions:

    $ make --version
        GNU Make 4.4.1
        Built for x86_64-pc-linux-gnu
        Copyright (C) 1988-2023 Free Software Foundation, Inc.
        License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
        This is free software: you are free to change and redistribute it.
        There is NO WARRANTY, to the extent permitted by law.


    $ grep --version
        grep (GNU grep) 3.11
        Copyright (C) 2023 Free Software Foundation, Inc.
        License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
        This is free software: you are free to change and redistribute it.
        There is NO WARRANTY, to the extent permitted by law.
        
        Written by Mike Haertel and others; see
        <https://git.savannah.gnu.org/cgit/grep.git/tree/AUTHORS>.
        
        grep -P uses PCRE2 10.44 2024-06-07

    $ sh --version
        GNU bash, version 5.2.37(1)-release (x86_64-pc-linux-gnu)
        Copyright (C) 2022 Free Software Foundation, Inc.
        License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
        
        This is free software; you are free to change and redistribute it.
        There is NO WARRANTY, to the extent permitted by law.

    $ bash --version
        GNU bash, version 5.2.37(1)-release (x86_64-pc-linux-gnu)
        Copyright (C) 2022 Free Software Foundation, Inc.
        License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
        
        This is free software; you are free to change and redistribute it.
        There is NO WARRANTY, to the extent permitted by law.

> > Signed-off-by: Sergei Trofimovich <slyich@gmail.com>
> 
> Please add a tag mentioning that it reverts a certain commit:
> 
> 	Fixes: 76f12e3fd3ea (2025-02-10; "share/mk/: Escape '#' in regexes")
> 
> 
> Have a lovely day!
> Alex
> 
> > ---
> >  share/mk/configure/build-depends/cpp/cpp.mk | 2 +-
> >  share/mk/src/sh.mk                          | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/share/mk/configure/build-depends/cpp/cpp.mk b/share/mk/configure/build-depends/cpp/cpp.mk
> > index ef12a848a..8a4ccc442 100644
> > --- a/share/mk/configure/build-depends/cpp/cpp.mk
> > +++ b/share/mk/configure/build-depends/cpp/cpp.mk
> > @@ -21,7 +21,7 @@ endif
> >  CPP_HAS_ALREADY_D_FORTIFY_SOURCE := \
> >  	$(shell \
> >  		$(CPP) -dM - -Wno-error </dev/null \
> > -		| $(GREP) '\#define _FORTIFY_SOURCE ' >/dev/null \
> > +		| $(GREP) '#define _FORTIFY_SOURCE ' >/dev/null \
> >  		&& $(ECHO) yes \
> >  		|| $(ECHO) no; \
> >  	)
> > diff --git a/share/mk/src/sh.mk b/share/mk/src/sh.mk
> > index 05c9e0449..487eaf14d 100644
> > --- a/share/mk/src/sh.mk
> > +++ b/share/mk/src/sh.mk
> > @@ -14,7 +14,7 @@ include $(MAKEFILEDIR)/configure/directory_variables/src.mk
> >  
> >  
> >  BIN_sh := $(shell $(FIND) $(SRCBINDIR) -type f \
> > -		| $(XARGS) $(GREP) -l '^\#!/bin/\(sh\|bash\)\>' \
> > +		| $(XARGS) $(GREP) -l '^#!/bin/\(sh\|bash\)\>' \
> >  		| $(SORT))
> >  
> >  
> > -- 
> > 2.48.1
> > 
> 
> -- 
> <https://www.alejandro-colomar.es/>



-- 

  Sergei

