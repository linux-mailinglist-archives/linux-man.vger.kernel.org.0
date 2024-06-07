Return-Path: <linux-man+bounces-1049-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 451AF900DB9
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 23:56:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3CDEB2408C
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 21:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 535F215530F;
	Fri,  7 Jun 2024 21:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="wcb/trg1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5131552F5
	for <linux-man@vger.kernel.org>; Fri,  7 Jun 2024 21:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717797376; cv=none; b=C7MrtQ8wzfxfat4dJLtjdxfvROCV9FOvxwx7xYzFBcrklycZNB4mz5T2Vvr3aTvRGttAIXnBRXSlLGysQqX6bes1gTQISsVLH2aepxXeP1/OXNgKe/r/C+nD6c0ZST2+seMLlrgG2gyXkduEiHwxWnwvCSKBQPxTkWoy8iPjK/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717797376; c=relaxed/simple;
	bh=G3ixLQzs/Uz9tIIg7kpbbS0MgdP8Lyn/q+KVkXjrLcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mGYFtiahlapu2+aPyClrv7p+qcPp3zrXeiIofKSJkSJPmTNaNHIAl0oHJKR57JJ+ZbMYOp9Bqbax6Yz9Q5yXY9RV8MaBVXUp3gUwPdAMjMwyPgvnGk/amRBxuxNbGpK3a6tM1GvxzGMYKMNM+IpTfn9+fQ0xlZ/KvW9BLwFi0gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=wcb/trg1; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7041a7d4beeso716133b3a.2
        for <linux-man@vger.kernel.org>; Fri, 07 Jun 2024 14:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1717797374; x=1718402174; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FPXBMhra4lMCtRCKm6it2p8h2jOtncdNipscf7rKCxw=;
        b=wcb/trg1lMCR2pbWoGAQfmjB33KRM+NSWT+YSTJqg4hbkoQdSwU/ePXHPI4FqWAISN
         x8tc8kbDD/6X54Lfbx7W3GjSrBIiQ4f8GFlWuX8UiWmY9HgRSfr7fuaJFD8fXJEpIVVi
         CKkQjtLpUVMazhnbnZctJD7N1xk1fJYRynxGo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717797374; x=1718402174;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPXBMhra4lMCtRCKm6it2p8h2jOtncdNipscf7rKCxw=;
        b=KW6ynmDYacn5gagCazZc7gR8rD7Y5fEYmMAYIuYDSao1PpVZQyw0E4+YEtH4/aKlFi
         ip7dIp71INv2wK6FxfNUaBlCrxlG9Y1Ld6rz+AfE3R1HKLbWnNig2Iw4HPxi8e/Oa7/E
         ZsDVfH6J45Fx1harRKs6lM8O9BwXULAlaI4zMDpETLrfM4JC5WCK+/bdpuoLoDyFesBI
         pmfNcMghL39Kb1eTiSNOqGKmQC69dsKync/GBZ2vVqV4s/wjKszoFzsneef1NERDN18i
         nuPJMXPWYQKxi1icAEx27BF/iJ17wmg3umZgUK1lxgAXAmLkU9cwAO8Q7ny4bsFwBT1J
         CcCg==
X-Gm-Message-State: AOJu0YxEvhS6qdSRk3fHnGkzyE+76tkJfh9NbH3QRe1bF9OTa4NT5wOn
	snR3NI2pI4B93q0XcqxZx9ds960dG2SXNsKVpvrjA8qe4Vo1rBVAJGFhkVvBlT10501ip2kY2fR
	O
X-Google-Smtp-Source: AGHT+IEsYj4wThMXktB6wxLKCqgwRugF7Qi5tDLQi3tb1BxBiaex2RaYNXmd3tSws1AVesk4THhcCg==
X-Received: by 2002:a05:6a00:b93:b0:704:1ee4:3138 with SMTP id d2e1a72fcca58-7041ee43e61mr1603478b3a.8.1717797372001;
        Fri, 07 Jun 2024 14:56:12 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-703fd49521fsm3001374b3a.103.2024.06.07.14.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 14:56:11 -0700 (PDT)
Date: Fri, 7 Jun 2024 14:56:09 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <ZmOB-Vb7TuhXPF1y@LQ3V64L9R2>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <ZmJrDd-TnNxc1y4-@LQ3V64L9R2>
 <m5lgw6ctbic2fa3i4llkotmxkdqvarf2kvtj2e4bgahqcivzim@tuobbjl66sl6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <m5lgw6ctbic2fa3i4llkotmxkdqvarf2kvtj2e4bgahqcivzim@tuobbjl66sl6>

On Fri, Jun 07, 2024 at 12:29:17PM +0200, Alejandro Colomar wrote:
> Hi!
> 
> On Thu, Jun 06, 2024 at 07:06:05PM GMT, Joe Damato wrote:
> > On Thu, Jun 06, 2024 at 11:39:58PM +0200, Alejandro Colomar wrote:
> > > Hi Joe,
> > > 
> > > On Tue, Jun 04, 2024 at 06:17:40PM GMT, Joe Damato wrote:
> > > > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > > 
> > > Thanks for the patch!  Please see a few comments below.
> > 
> > I've included some questions below just to make sure I give you a v2
> > that is much closer to correct :)
> 
> Nice :)

[ ... ]

I think I've incorporated all of your feedback and given it a good
rewrite.

Once I sort out the linting issue in the other thread (and fix any
issues that finds), I should be ready to send a v2 that I hope will
be much closer to correct.

Thanks for your detailed and thoughtful review,
Joe

