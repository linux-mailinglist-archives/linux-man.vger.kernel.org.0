Return-Path: <linux-man+bounces-740-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 237468A36B8
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 22:04:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB5F9282AA3
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 20:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D534C14F9F0;
	Fri, 12 Apr 2024 20:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h5zUzQku"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA4F14F9DF
	for <linux-man@vger.kernel.org>; Fri, 12 Apr 2024 20:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712952273; cv=none; b=ekRo93k09TvvFJURnuU1KoGGcr3dBiU3/ij5Qk2R1zYk1zVf+m7JG8dTyP7+9qll+JREcbC2/aKbT+nR39OmwUfbegTgz7FijwSo4QGWxms0IEBcTYH0dLwrWF+k5xrcpil0h43A8R3+Tr6DXF2K5LeSEYOoKWXa5JiOZGmwTH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712952273; c=relaxed/simple;
	bh=mNS6k/aaDv4LMFj85KNQ79/EDBVOTPhFHCxQfkByyro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UkQOozNZkmYZvOa+9RedDCuPBplc80/cKDgaLsDvoEe3p4nf2tqfav0XombaR/0KISvqgCxcdax2eBJlZ7O5jjg0yoxQudKqpTY4cap/qeqLU/txOYFoQgr/aC2qXtUFyI4dYt5Hwk9T1s9xcoT1Su/ewQov3oBjiFvJqpKryG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h5zUzQku; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-56e69888a36so1632965a12.3
        for <linux-man@vger.kernel.org>; Fri, 12 Apr 2024 13:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712952270; x=1713557070; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5fn5SRYf5+/xiwieZ1h1f123RFOwLGnDnIeCCbzRyZ8=;
        b=h5zUzQkuJeLXv6kP6is7nevuTliaui7eIYar6dDUDeifsmpYxcaLKyr80PxpxubEYY
         nNhTDNOMMkGqz0DcnVwb80G+StjFTGmw5dr5m597I6iAVGJHUnD7WJRh7dh63vHb97p1
         TZgtcOotIwATgvai+gTp3GBzyTiy3YXQtehgsC9aJ0vBUBnh4AW+nVpRIA1CyOkJJFZR
         vKz2nCjp2VOb0NqtkLapM9h/VIATFlk2uKFKr4n/dTyi7VZVdGm2uNNd7ptHNTTgmcWE
         GnVv1FlZJWpDV6TDuzwVucfMxpQRa1FlT7vLE0Y+PerROTDU1DWHE5Pc2Nzw8c0Y4Ehf
         SwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712952270; x=1713557070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5fn5SRYf5+/xiwieZ1h1f123RFOwLGnDnIeCCbzRyZ8=;
        b=uTe4osikXEXt9eOhtV/85w7oqayswo3c4Cnbls5AWToZHjjrKkImfKLcxFHVDHdkiC
         oGdJygjlixTfS+3+RJoy8Vp334Bu6YUI5us6AX2hogvugeRUg3EqJPNuX3nm9yCqHwkn
         FhZepmaSJBAO4kjH5DZHF1nvJEDfqZiDonpgAkY8eb6SUlQlU1dkw7SmyHHm4wrd8dks
         +hBceyzzUBotYbzKlHAb/9RbrnH6Gm6khQK3lAquY9EZfSBu6KQiIw7gW+0gI+RlJkBV
         knoyq7xRT3gJnpNTHEutFSJoC9rsviGIQ7NAHpfeOnfzinbndD3JlwjenKeL7QF5i/ix
         yoyg==
X-Gm-Message-State: AOJu0Yz431KbIIBvYosEm/KH1AB/EM9DdmCKXpPj0rqYqjjdRG3zQmxG
	d3IpsvZWF9ox7E7/duvdhydU+gZsX0HibDQkKZ6wrIooVBkwPlVy
X-Google-Smtp-Source: AGHT+IEfM+H/3ocL4ARIneOCU7ZKHCNoJM19gGhTnnMk4UJsfrW/S/hnDFueplX2XiTHLLhohX8Y5g==
X-Received: by 2002:a50:a453:0:b0:56d:f488:cb0e with SMTP id v19-20020a50a453000000b0056df488cb0emr2221060edb.38.1712952269555;
        Fri, 12 Apr 2024 13:04:29 -0700 (PDT)
Received: from eldamar.lan (c-82-192-242-114.customer.ggaweb.ch. [82.192.242.114])
        by smtp.gmail.com with ESMTPSA id ck16-20020a0564021c1000b0056ff510c327sm1351693edb.94.2024.04.12.13.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 13:04:28 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Received: by eldamar.lan (Postfix, from userid 1000)
	id 69457BE2EE8; Fri, 12 Apr 2024 22:04:27 +0200 (CEST)
Date: Fri, 12 Apr 2024 22:04:27 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: proc.5: Still refers to "described in more detail below" for
 splitted out manpages
Message-ID: <ZhmTy3oql5GbeMmo@eldamar.lan>
References: <Zhlth9wCHbxoNkMi@eldamar.lan>
 <ZhlzmymKd3XBq9Yh@debian>
 <Zhl_ZOqOGkJizieb@eldamar.lan>
 <ZhmQ3JCTAKN61h_K@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="96rIWxQC/SG2tg8T"
Content-Disposition: inline
In-Reply-To: <ZhmQ3JCTAKN61h_K@debian>


--96rIWxQC/SG2tg8T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Apr 12, 2024 at 09:51:56PM +0200, Alejandro Colomar wrote:
> Hi Salvatore,
> 
> On Fri, Apr 12, 2024 at 08:37:24PM +0200, Salvatore Bonaccorso wrote:
> > Thanks for the quick feedback. So please find attached the proposed
> > change. Let me know if you want something changed.
> 
> You're welcome!
> 
> > From 07bf84cbb2e78595b4514fe820ae5574bba8d0ec Mon Sep 17 00:00:00 2001
> > From: Salvatore Bonaccorso <carnil@debian.org>
> > Date: Fri, 12 Apr 2024 20:29:06 +0200
> > Subject: [PATCH] proc.5: Refer to split out manpages for detailed description
> > 
> > Back in August 2023 various parts of proc(5) were split out int separate
> > manpages. The final cleanup in 92cdcec79df0 ("proc.5: Clean up after
> > making sashimi of this page") missed to as well refer to the split out
> > manpages and retained the wording that details are found further below
> > in the manpages for the various files.
> > 
> > Fixes: 92cdcec79df0 ("proc.5: Clean up after making sashimi of this page")
> > Signed-off-by: Salvatore Bonaccorso <carnil@debian.org>
> > ---
> >  man5/proc.5 | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/man5/proc.5 b/man5/proc.5
> > index bdc47456bdce..4c20920e1e3c 100644
> > --- a/man5/proc.5
> > +++ b/man5/proc.5
> > @@ -176,7 +176,10 @@ Various other files and subdirectories under
> >  .I /proc
> >  expose system-wide information.
> >  .P
> > -All of the above are described in more detail below.
> > +All of the above are described in more detail in separate manpages
> > +prefixed with
> 
> Maybe I'd reword to say "whose name starts with".

So "whose names start with" as there are multiple manpages?

> > +.BR proc_.
> 
> This would need a space before the '.'.

Ah right added.

> > +.TP
> 
> Why TP?

Because I stupidly copy-pasted lines and did not properly adjust and
rechecked.

> Have a lovely night!
> Alex
> 
> >  .\"
> >  .\" .SH FILES
> >  .\" FIXME Describe /proc/[pid]/sessionid
> > -- 
> > 2.43.0

Quite imbarassing doing so many errors in one go. Attached is the
revisited version.

Changes in v2:
- Reword as suggested "whose names start with"
- Add missing space in hilighted proc_ 
- Drop superflous .TP (from a copy paste error)

Regards,
Salvatore

--96rIWxQC/SG2tg8T
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-proc.5-Refer-to-split-out-manpages-for-detailed-desc.patch"

From 7753658486c2ee2b1d50df2811dcef6af335378b Mon Sep 17 00:00:00 2001
From: Salvatore Bonaccorso <carnil@debian.org>
Date: Fri, 12 Apr 2024 20:29:06 +0200
Subject: [PATCH] proc.5: Refer to split out manpages for detailed description

Back in August 2023 various parts of proc(5) were split out int separate
manpages. The final cleanup in 92cdcec79df0 ("proc.5: Clean up after
making sashimi of this page") missed to as well refer to the split out
manpages and retained the wording that details are found further below
in the manpages for the various files.

Fixes: 92cdcec79df0 ("proc.5: Clean up after making sashimi of this page")
Signed-off-by: Salvatore Bonaccorso <carnil@debian.org>
---
 man5/proc.5 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index bdc47456bdce..8022ca49ee68 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -176,7 +176,9 @@ Various other files and subdirectories under
 .I /proc
 expose system-wide information.
 .P
-All of the above are described in more detail below.
+All of the above are described in more detail in separate manpages
+whose names start with
+.BR proc_ .
 .\"
 .\" .SH FILES
 .\" FIXME Describe /proc/[pid]/sessionid
-- 
2.43.0


--96rIWxQC/SG2tg8T--

