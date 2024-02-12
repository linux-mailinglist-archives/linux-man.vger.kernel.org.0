Return-Path: <linux-man+bounces-436-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A39D851325
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 13:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AFE97B27E92
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 12:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA983B185;
	Mon, 12 Feb 2024 12:06:22 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from gnu.wildebeest.org (gnu.wildebeest.org [45.83.234.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46073A8D6
	for <linux-man@vger.kernel.org>; Mon, 12 Feb 2024 12:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.83.234.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707739582; cv=none; b=HrJh2XZ9/Jq0row8b1WWAY9cDjyIMcuXkscsRr1bmChbM7sybZMtAdKEA+Mj9RKGjDD4KomM6LWcJf3vZMJqHwqFHHtWb56KPZwGo+mPzlbquqj9zU+XvRrpOXwjx/Ld8eQKUS5wQVKLztFFKVoEbn8CdNip1XuC8lsNCfc2i1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707739582; c=relaxed/simple;
	bh=DyVx0VeDcfrP4U0I6qHLmLP7LkE84O4D6J5z2osfVaI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iYf017CAqC+8/S2/8fb9Co52a4oAwtJB8PofNtGZ3vILOFTxv/FeCukyLr06ZMLMV6agUYBg8k+lsxMqTVk1uizcXNzXuMuicBkz5QulbV53JvM1dxppsr375ZoSPLkRuDitiViVEmPviXfL3+1pA/DkNtuNqyCKNMf69PKvKA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org; spf=pass smtp.mailfrom=klomp.org; arc=none smtp.client-ip=45.83.234.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=klomp.org
Received: by gnu.wildebeest.org (Postfix, from userid 1000)
	id 595BE3000674; Mon, 12 Feb 2024 13:06:16 +0100 (CET)
Date: Mon, 12 Feb 2024 13:06:16 +0100
From: Mark Wielaard <mark@klomp.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?iso-8859-1?Q?H=E1jkov=E1?= <ahajkova@redhat.com>
Subject: Re: [PATCH v2] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS
Message-ID: <20240212120616.GH21691@gnu.wildebeest.org>
References: <20240211232903.1622396-1-mark@klomp.org>
 <ZcldDOM_i6u742Pf@debian>
 <20240212000531.GG21691@gnu.wildebeest.org>
 <Zcl5HJ7XS6gPvhzg@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zcl5HJ7XS6gPvhzg@debian>
User-Agent: Mutt/1.5.21 (2010-09-15)

Hi Alejandro,

On Mon, Feb 12, 2024 at 02:49:16AM +0100, Alejandro Colomar wrote:
> When we include a header not for a function but for constants, we
> specify which are those constants.  For example, membarrier(2) has
> 
>      #include <linux/membarrier.h> /* Definition of MEMBARRIER_* constants */
>      #include <sys/syscall.h>      /* Definition of SYS_* constants */
> 

Aha, ok, the other comment. Will reword for V3.

> Here, I'd use
>      #include <linux/close_range.h> /* Definition of CLOSE_RANGE_* constants */
> 
> BTW, I notice that it's near the 80-column limit.  We try to limit
> ourselves to 79 columns, for an obscure reason.  For that, we'll need to
> use only 1 space before the comment (otherwise, I'd agree to use 2).

Yeah, max 79 max sense (all my terminals are 80 chars wide).
Formatting the comment is a little tricky, but I believe I got it.

Cheers,

Mark


