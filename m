Return-Path: <linux-man+bounces-1282-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5AD919A19
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 23:50:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AFCFB22FA8
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 21:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198EB19308F;
	Wed, 26 Jun 2024 21:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="euPCs7sd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CA2180A7C
	for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 21:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719438637; cv=none; b=IG6ZRoa41xSqft+F3wtGeNZ86P+fIkrXjJlgI88iXpygsdWA0oeju7+SPAwRyDBou7zm+nRlZhgXE8J9u1AyRzpMx0dQx0sjW2AhVlKG6KXQt5lShDsHnbY9x7vYc2DXCit2DcsndKA2IBw66BRFfZrDpxKlH/2TFp2yPlMa1iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719438637; c=relaxed/simple;
	bh=NbOZqCH+QhQMVNfxSYNX5PdZ6xDe3LY9YJNgCUyY+W8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GtImDSFhXZ0hW7VCuygcmzwSrnCX0t/unbFEASpRAvJl2H633ge7dcgiSWHpm7fUAqOji6pKw2JpcC4ZvfktX5Ocj4erXwWCc1tFYRwAqmo8uqWIZsJoaaofqJ6X7UyciUNoPeMhbGLXwxrrfwqaMuqyJj8jEC8vhqNNG0KCPTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=euPCs7sd; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6b4fe2c79fdso30082236d6.0
        for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 14:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1719438635; x=1720043435; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nItWoQPobi1r6JgEVQNEgiLmBSEbYuDmWiB9iYsu7NA=;
        b=euPCs7sduV/mtyetINoOKijGQ3jS8SNztvOr99nypqger0a1fIVlbrJhYerXKY86YY
         sJ6miNsYqjmFf1cmHbIprxuqF/uvAhAExjEFuLnt4/nAYvtaGNBaX/u6zdj3tLed/wlE
         Yovpr2j7lGkB8yK8dqTb0+/BaldPHiDyQj5u4/+TONJEgfGaRwFRjYlz343bvZGsp9kw
         N8j+mOXQ1L9tr6Uqx6SsIGX6f+GAkyjHhRd3RCjY/7LCAf6vhLJ2p2tiWYaoV/IZEdx4
         HgVpgOplm/No0n4g31JWKi+QLrCmYz94rXDoZIAPQj/jJ2omlnvfyiLdUTnnuLV6O33U
         Ch0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719438635; x=1720043435;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nItWoQPobi1r6JgEVQNEgiLmBSEbYuDmWiB9iYsu7NA=;
        b=Kx5ir21600jfLNMUaLXDW/kU26ZNaQVjaF82FMl4OX/OJ0NGqgxeyEN/2z+3fsfgar
         rtvhX7OCN7xXISBbyNPUnuMQhNWDbDoRpSy1FyKPHtjpeCRWeukWoUMUw181l8ZRh4+P
         4crTVjb55xyn2NKLO9NEWOKDtzLjzDJCfNPW24x0lEIG7Nr8TQO6ypGDlCg4SR3R1udS
         jviOMPjrHu9NtAnA7BwG5StgHkZ4jzwG79ZAde2SXAyvX2sCbVKdh+TbZUbVD23Y6XtK
         trY4BFuvutqizOewgokn0Rlrv5Rh22iDdh05mjrF3Tor7ueeP5ahl58/Wi+ld5xsavGd
         wg4w==
X-Gm-Message-State: AOJu0Yx8XlziuVspFtbdLOC5iiG7FLdzpxUM7qHARqg5DmPyiu6jL9oq
	p4sp4A9DzDPCyqrWBpep9DzoDtQ4PwWzqjYvAt3vPUjrh8OqA1PpV/Pl25nw0iI=
X-Google-Smtp-Source: AGHT+IE5n69kKsZ93mgbOZPgZJbMw9EPlLZE13cTgzqAJ7ztvDoiMc8Ae/jOTrAQeEtoqptNiey6Dw==
X-Received: by 2002:a05:6214:4244:b0:6b5:1a8:7e38 with SMTP id 6a1803df08f44-6b53bff494bmr121053126d6.51.1719438635412;
        Wed, 26 Jun 2024 14:50:35 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b5223fa509sm55940496d6.51.2024.06.26.14.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 14:50:35 -0700 (PDT)
Date: Wed, 26 Jun 2024 17:50:34 -0400
From: Josef Bacik <josef@toxicpanda.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, brauner@kernel.org,
	linux-fsdevel@vger.kernel.org, mszeredi@redhat.com,
	kernel-team@fb.com
Subject: Re: [PATCH v2 0/2] man-pages: add documentation for
 statmount/listmount
Message-ID: <20240626215034.GA3606318@perftesting>
References: <cover.1719417184.git.josef@toxicpanda.com>
 <t6z4z33wkaf2ufqzt4dtkpw2xdjrr67pm5p5leikj3uj3ahhkg@jzssz7gcv2h5>
 <20240626180434.GA3370416@perftesting>
 <gsfbaxnh7blhcldfbnhup4wqb2e6gsccpgy4aoyglohvwkoly5@fcctrxviaspy>
 <20240626214407.GA3602100@perftesting>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626214407.GA3602100@perftesting>

On Wed, Jun 26, 2024 at 05:44:07PM -0400, Josef Bacik wrote:
> On Wed, Jun 26, 2024 at 08:41:06PM +0200, Alejandro Colomar wrote:
> > Hi Josef,
> > 
> > On Wed, Jun 26, 2024 at 02:04:34PM GMT, Josef Bacik wrote:
> > > On Wed, Jun 26, 2024 at 07:02:26PM +0200, Alejandro Colomar wrote:
> > > > You can
> > > > 
> > > > 	$ make lint build check -j8 -k
> > > > 	$ make lint build check
> > > > 
> > > > to see the full list of failures.
> > > 
> > > I captured the output of
> > > 
> > > make lint build check -j8 -k > out.txt 2>&1
> > 
> > Hmmm, please do the following steps to have a cleaner log:
> > 
> > 	## Let's see if the build system itself complains:
> > 	$ make nothing >out0.txt
> > 
> > 	## Skip checkpatch stuff:
> > 	$ make -t lint-c-checkpatch
> > 
> > 	## Make fast stuff that doesn't break:
> > 	$ make lint build check -j8 -k >/dev/null 2>/dev/null
> > 
> > 	## Now log the remaining errors:
> > 	$ make lint build check >out.txt 2>&1
> > 
> > > and pasted it here
> > > 
> > > https://paste.centos.org/view/ed3387a9
> > 
> > BTW, you seem to also be missing cppcheck(1), which at least in Debian
> > is provided in the cppcheck package.  It also seems to be available in
> > Fedora, but I don't know if your system will have it.
> > 
> > > Clang messes up a bunch for a variety of different pages.
> > 
> > I suspect the Clang errors to be due to missing libbsd-dev.
> > 
> 
> Ok well those two things fixed most of the errors, now I'm down to just this
> 
> https://paste.centos.org/view/acd71eb7
> 

Err that just shows the one error, this is all of them

https://paste.centos.org/view/b68c2fb1

Thanks,

Josef

