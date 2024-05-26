Return-Path: <linux-man+bounces-1000-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4113C8CF47E
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 16:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3882D1C20849
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 14:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01EFFE573;
	Sun, 26 May 2024 14:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CTktD0nz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0D2B646
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 14:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716733176; cv=none; b=bMyWOuYTboWl2i2XJnV6ixV1RAbxNSwvvuN9IdKV7AjxdutfFBdZvDHsD08U/nTHZGNbgfSD39WX5ZfDM/mmWkp9KI1sTMfbHZyN6Ac6JKnlDnv+xcqPMACpPPLe45ayus2IAONL/HV8rNkRioess5HcBReOR2DpLrCpZh/Qjtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716733176; c=relaxed/simple;
	bh=fHIHBH8sXgalDGe5cOL/gDLWuM2dWnVBop8MOhKT/as=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gSGlyzXIxAajj2eXK0Pju5CrNX4rn+b1rT4nuVE8BwmR9BIRTJZzlIN7BFFk5aP3Mz4B4TKuGy9Ls4ySdnqhwThUKASnRApAtedzbc6GrNn3CRyHAKIFDwTcaoBmPUj2r01Xa2IVeYtQlRKVEEzC2OY5HU88MdF/jLpZdJpQmtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CTktD0nz; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5295ae273c8so2521011e87.0
        for <linux-man@vger.kernel.org>; Sun, 26 May 2024 07:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716733173; x=1717337973; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ebkxlXvnRd4JsyyBxerAzF/aNUpAOIq1yBLM/wUE04o=;
        b=CTktD0nzAPHmPhT/S7c/JoIcplnCRn51k4g4NV6acBI3CyZMTMxMVRIScifqb+Zpnt
         0bOCMR7FjV8NA5iwDFG/xI4A5+TYGRg0fk31q96oPrakXrzho8n5qM6My+C9lKok1Yq/
         WudLmiJBgVHMLFe5YDChUD1Do5sNzPkQbEo++LN9TBK896uDsyGhm48jIxEXzRuoX/Ps
         RiSaaCts7fJusMZF1XId5ywNXANODM1ki1X1ZGGPc1XauKxu4uQvd0sgqKzLhAFkDu07
         OZsJPYFhuVeQj4mLe7HaN1IgAWGnvbuP41Vbvq+NkoQKsZ2d9Gj0K0UdJx/HII7m8GNs
         XZUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716733173; x=1717337973;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ebkxlXvnRd4JsyyBxerAzF/aNUpAOIq1yBLM/wUE04o=;
        b=PTA3Kb8SbnSn2+z3NKK/bn7FzpcDVffMVLChIaOX313EdHRnvoGGz4TZuY0ME4lm/1
         LwDVA4tALztv5QoLy0ODLMkNe7AMnDzGr1uTydOKXbf8LOq9KHbo5E8JC3xiuUwcS+6H
         vHy8PearKSxyHM0wT7qW8XphlL+24Lduwrv5Bm45G5ffFlPgLF5140ESRgaitdEH0PKl
         7eV8Nt7UN2COn2GpZgPTbYvlB9x9DoexrP1RpQCbJI9jGkNPzJSUhR3jURRactHv8Nzb
         /WYfLg+MAVBQGDp3jX3KIoMl/I3sdBkxzv0mI1aREU9wBg9M1p1iSNKsw1PBkbuCCMHd
         gdTg==
X-Gm-Message-State: AOJu0Yzyxe+QC/shoJTIe9Tf/pycFVBEvIO/F95p9C+ttrTPeaYvVLCA
	iuJmY3FaP6RH8oX0HZNFJ15enSQCbTNohej2kfAxTs6Dgb7O4qkI
X-Google-Smtp-Source: AGHT+IGCXlSXZQlWkpmtsxkqKw3dqIgUXCjw555zrwQn4JTRQo131vDH4mX1TuagruLpnnqb8Ju1fA==
X-Received: by 2002:a05:6512:3c82:b0:529:ae9b:e4d2 with SMTP id 2adb3069b0e04-529ae9be567mr1217976e87.24.1716733172904;
        Sun, 26 May 2024 07:19:32 -0700 (PDT)
Received: from t420 (net-2-37-91-213.cust.vodafonedsl.it. [2.37.91.213])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cc4efb8sm382787766b.100.2024.05.26.07.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 07:19:32 -0700 (PDT)
Date: Sun, 26 May 2024 16:19:30 +0200
From: Emanuele Torre <torreemanuele6@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE
 requirement
Message-ID: <ZlNE8ooomjnaKWXX@t420>
References: <20240526064227.937757-1-torreemanuele6@gmail.com>
 <nx4yzt26bte57ak7vnc7tkl7ofs6fmqxkaexhvx2ixx7jst4yb@xui6m6mjxoz6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <nx4yzt26bte57ak7vnc7tkl7ofs6fmqxkaexhvx2ixx7jst4yb@xui6m6mjxoz6>
User-Agent: Mutt/2.2.13 (00d56288) (2024-03-09)

On Sun, May 26, 2024 at 12:39:07PM +0200, Alejandro Colomar wrote:
> Hi Emanuele,
> 
> On Sun, May 26, 2024 at 08:42:18AM GMT, Emanuele Torre wrote:
> > Like the unlockpt(3) function, grantpt(3) requires _XOPEN_SOURCE to be
> > defined before including stdlib.h.
> > 
> > unlockpt.3 explicitly shows this requirement in its SYNOPSIS:
> > 
> >     SYNOPSIS
> >            #define _XOPEN_SOURCE
> >            #include <stdlib.h>
> > 
> >            int unlockpt(int fd);
> > 
> > But grantpt.3 did not:
> > 
> >     SYNOPSIS
> >            #include <stdlib.h>
> > 
> >            int grantpt(int fd);
> > 
> > o/
> >  emanuele6
> 
> Patch applied; thanks.

I've just noticed that ptsname.3 is also missing  #define _XOPEN_SOURCE
in its synopsis; however  #define _XOPEN_SOURCE  does not seem to work.

Even if _XOPEN_SOURCE is defined, #include <stdlib.h> does not include
the prototype of ptsname(3).  It seems to only be included when
_GNU_SOURCE is defined.

This may be a glibc bug because ptsname(3) is supposed to be a POSIX XSI
function like grantpt(3) and unlockpt(3).  Only ptsname_r(3) is an
extension.

https://pubs.opengroup.org/onlinepubs/9699919799/functions/ptsname.html

    $ gcc -fsyntax-only -D_XOPEN_SOURCE -includestdlib.h -x c - <<< 'int main(){ptsname(0);}'
    <stdin>: In function ‘main’:
    <stdin>:1:12: error: implicit declaration of function ‘ptsname’ [-Wimplicit-function-declaration]

    $ gcc -fsyntax-only -D_GNU_SOURCE -includestdlib.h -x c - <<< 'int main(){ptsname(0);}'

I am using the version of glibc packaged by ArchLinux
(package version 2.39+r52+gf8e4623421-1).

I added libc-alpha@sourceware.org to CC in case it is actually a bug.

> 
> Have a lovely day!

You too!  :-)

> Alex

o/
 emanuele6

