Return-Path: <linux-man+bounces-1004-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4843E8CF4F4
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 18:58:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E56BD28104B
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 16:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58363175AD;
	Sun, 26 May 2024 16:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BttjlTBo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841BA2260A
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 16:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716742723; cv=none; b=U66LP+W2Ixez9MoNZSk8Qi9Ab0Ha4PXKS/ibnz9oK9zvwj1tsdQ/9rtqfvt63YaluF7ZQidhmJil6ocz2QIz9i3h7CbLVPjq8IHz+rZYRAJUgcxsZ0R2yQ1ITeMsHbVFaPxZcclfmXbVLh0W1ydCBeotScC4z1IgAH2BlN1jD8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716742723; c=relaxed/simple;
	bh=InisioloN5biaKJdkBkd6zhqE40fvyLsRT09ig87t0Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KDfRSHPf0tZosIaJPgLhM2r2782IdyO7eCjOuapJpjDKahmuwJ5H76izJ61h5ALyuUup4vnXVbbjl33qKDhmy0g3ViYhsRGgt24d9l51/g+8w5vGAuEZz8vHKsTX50h50l15qckQyiTwqJBDirYp3pLdYF5YJl7yUZhPuWh5Dbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BttjlTBo; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-354f3f6c3b1so3805609f8f.2
        for <linux-man@vger.kernel.org>; Sun, 26 May 2024 09:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716742720; x=1717347520; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TjJTIxhATnAIoPs5lHM7s4TirsKfEZN9C54AeLun/Lo=;
        b=BttjlTBoglUtfB7sd1wDAXzifeRzK4Ym/nmg8dU/dV7JwKxrMRdjo3BeSDuk6X36QD
         CPTvn/Ec0P6b7NLZQ0BjtqlxPOzEReolILdZEJMorr7KpVaWycTsoP9fOzFMkG/V99CD
         YjrLpH/f/+qZSlqVD47it2Cb7CmzIUKMhADgOFEenrCR23r+eZVK8Pv1x6nbjrkqgb9s
         DghWb+TY4oD1XYxifC/1FC8DFvemurOR/Iu8XJB4nvPHR9Erq6Zog/gzblnhDT+Wyifk
         ppAOMAzjbVoLoZWy+81gZhjzC1seV3FYj3dcRih1J2xY/irczNZQgVbFNC+unL8B5aZF
         2sWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716742720; x=1717347520;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TjJTIxhATnAIoPs5lHM7s4TirsKfEZN9C54AeLun/Lo=;
        b=JZbHOl5kAfxqaWQN9qcjS1lfFTaj6EckQkcPhzLTe8c1m5ZioWSAx8QrHq86WYP7Yy
         fOBTP2k6wYScobHD82HwqdZ7qsRdc5yufzzn9hyrcMLIwrHwFivAh6/ZfSLaTJeJ+oqK
         jyRlLW47+l+GfJSDAGYPD0qNAi5Z76odonYn9aWb2vrt7rNCgNiuTs/Pt7ZzmvOiirv5
         5REc9nXu+5qnd/ySp7Vo2CqabErOtkndXegS+wIMhHT1DAHR1H1NP+o6/5kLFbI6FYGP
         KY9Dzy3SWV/FPiuKLg15uYN3pUXVtGKn8Doq2b/UY1lNk7odQTxM+DJ2bZbzIyAvYQVQ
         Q0Ew==
X-Gm-Message-State: AOJu0YwAKfYuZrQphl1cVP6gxksMJqW6Pa0KSLNzs/ATSr5l7pzg9A6n
	uDD/R0Ciy9Ju+rPRRCsPphehu5ZBBtoWe/9QbP11mgJng9tp2rTz
X-Google-Smtp-Source: AGHT+IFmKUy8pES/WTR7LbToxda9GIEdTgTA4vujC1BvJUbyXM1eOnropp/RSav63sLj5sN4RrQ0Bg==
X-Received: by 2002:adf:fccc:0:b0:357:85e5:e5dd with SMTP id ffacd0b85a97d-35785e5e744mr2141143f8f.37.1716742719513;
        Sun, 26 May 2024 09:58:39 -0700 (PDT)
Received: from t420 (net-2-37-91-213.cust.vodafonedsl.it. [2.37.91.213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a1c93f7sm6811354f8f.74.2024.05.26.09.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 09:58:39 -0700 (PDT)
Date: Sun, 26 May 2024 18:58:37 +0200
From: Emanuele Torre <torreemanuele6@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE
 requirement
Message-ID: <ZlNqPWpHielt0yRt@t420>
References: <20240526064227.937757-1-torreemanuele6@gmail.com>
 <nx4yzt26bte57ak7vnc7tkl7ofs6fmqxkaexhvx2ixx7jst4yb@xui6m6mjxoz6>
 <ZlNE8ooomjnaKWXX@t420>
 <2fso6x7fhxowsgozm4gwnfbqw2ylukibhbq2pneddxyd44uw5v@bva2bmi65zx6>
 <ZlNRPhPzdi0U8Fhp@t420>
 <lnk72xmyvdccfns2ncuzlvaz655ckfyd3lnljpo4sqb2x27ipo@vvqus3o6a342>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <lnk72xmyvdccfns2ncuzlvaz655ckfyd3lnljpo4sqb2x27ipo@vvqus3o6a342>
User-Agent: Mutt/2.2.13 (00d56288) (2024-03-09)

On Sun, May 26, 2024 at 06:38:35PM +0200, Alejandro Colomar wrote:
> Hi Emanuele,
> 
> On Sun, May 26, 2024 at 05:11:58PM GMT, Emanuele Torre wrote:
> > > On Sun, May 26, 2024 at 04:19:30PM GMT, Emanuele Torre wrote:
> > > > I've just noticed that ptsname.3 is also missing  #define _XOPEN_SOURCE
> > > > in its synopsis; however  #define _XOPEN_SOURCE  does not seem to work.
> > > Did you define it to 500, or an empty value?
> > 
> > empty value.
> 
> Hmm.
> 
> > > You need to define it to an appropriate value.  (The synopsis is a bit
> > > misleading, and we could/should specify the minimum value.)
> > 
> > I did notice the
> > 
> >     ptsname():
> >         Since glibc 2.24:
> >             _XOPEN_SOURCE >= 500
> >         glibc 2.23 and earlier:
> >             _XOPEN_SOURCE
> > 
> > But that is the same text that appears in grantpt.3 and unlockpt.3, and
> > they get included with just _XOPEN_SOURCE.
> > 
> > I also noticed it this morning when I sent my patch for grantpt.3, but I
> > ignored it assuming I probably misunderstood its meaning since it worked
> > with just _XOPEN_SOURCE.
> 
> I also noticed and ignored it, since I saw the same text in the other
> pages.

Yes, I copied the line from unlockpt.3 after seeing it there, and seeing
it resolved the issue.

> 
> > Does this mean that my grantpt.3 patch is wrong?
> > 
> > And that  #define _XOPEN_SOURCE  in the synopsys of unlockpt.3 is also
> > wrong?
> 
> Regardless of it being correct or not, I think using the definition
> used by newer glibc versions is better, so we could update the SYNOPSIS
> of all pages to show the requirements of the latest glibc.
> 
> > I should not use just  #define _XOPEN_SOURCE  without a value in my
> > programs if I want to use ptsname(3), grantpt(3), unlockpt(3)?
> 
> TBH, I don't know.  AFAICS, _XOPEN_SOURCE without specifying a value
> means POSIX.1‐1990 (maybe? not sure).  That is so obsolete these days
> that I don't know what it means.  Does it provide ptsname(3)? I don't
> know.  But yeah, I'd say just don't use it.
> 
> These days, POSIX.1-2001 is granted everywhere (except maybe some dying
> proprietary systems), and even POSIX.1-2008 if you restrict yourself to
> Linux and the BSDs.  I suggest using the flags that enable one of these
> more recent standards.

Yes, I guess when necessary it's probably easier to just always use
#define _GNU_SOURCE   instead of messing with _XOPEN_SOURCE,
_POSIX_C_SOURCE, etc.

o/
 emanuele6

