Return-Path: <linux-man+bounces-2424-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3523A334F4
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 02:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F4263A5F6C
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 01:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BF978F3B;
	Thu, 13 Feb 2025 01:50:36 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mcvoy.com (mcvoy.com [192.169.23.250])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BD01372
	for <linux-man@vger.kernel.org>; Thu, 13 Feb 2025 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.169.23.250
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739411435; cv=none; b=NY22I+GYW1JwxPKbEZBHhmT4c5Z8pRsOqejAsOIid7x9+yAklh1I4KiCQb7a+qmUEs1+sdwC/K6blT2v82SMNbiVnUbACCbAfIpI0XnkXijsso2MF3FMWPCKBUvvgACb7Gms/4HoWTnFciwwEMzigBi2+Sw4WsmR9MbObtrCpOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739411435; c=relaxed/simple;
	bh=aGsk3qlGXeOAvRmIiMRtkhJGzxbgPLyypo6pz3qjZB4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u3UyljpdAttl/10pM9be2vAPKEoJlCmrUHJs8oKaOrbHZHCJfLEodoHhCJ28pWIvALX9lGdW+FdtJrAVYIzMXW2ExrPtJCAALaVRKlUtGS3WZATorH8eK7hUV/ow/NfrCz0FU7erq3Y0FCi8DjLFbi/Cgd4fInroQMUAxwVrJBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mcvoy.com; spf=none smtp.mailfrom=mcvoy.com; arc=none smtp.client-ip=192.169.23.250
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mcvoy.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mcvoy.com
Received: by mcvoy.com (Postfix, from userid 3546)
	id 4456435E918; Wed, 12 Feb 2025 17:45:22 -0800 (PST)
Date: Wed, 12 Feb 2025 17:45:22 -0800
From: Larry McVoy <lm@mcvoy.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>,
	?????? <nabijaczleweli@nabijaczleweli.xyz>,
	linux-man@vger.kernel.org, tuhs@tuhs.org
Subject: Re: [TUHS] Re: Unix V10 Volume 2 PDFs
Message-ID: <20250213014522.GF31438@mcvoy.com>
References: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
 <20250213012107.urh4ndk4tnnzm3wx@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250213012107.urh4ndk4tnnzm3wx@illithid>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 12, 2025 at 07:21:07PM -0600, G. Branden Robinson wrote:
> > Doesn't groff(1) handle the Unix sources?
> 
> Assuming the full source of a document is available, and no part of its
> toolchain requires software that is unavailable (like Van Wyk's "ideal"
> preprocessor) then if groff cannot satisfactorily render a document
> produced by the Bell Labs CSRC, then I'd consider that presumptively a
> bug in groff.  

In my experience, groff has handled decades old troff source and done
a great job.  I'd not be surprised if there was something that didn't
work, but the vast majority of the stuff I've tried has worked just
fine.

--lm

