Return-Path: <linux-man+bounces-1669-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE8895CD6F
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 15:12:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DB441C20B16
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 13:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFBB5185B43;
	Fri, 23 Aug 2024 13:10:27 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38896186E23
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 13:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724418627; cv=none; b=tPFM94O4NpTF4LCVNFO35/9LUFqXrxZFYTj9GwVTSTujAF6jWpfd4WtEXXaXHKk1DI9RRHKOtWof2F9tGgTh6aNgsCVYqWEcQb4VWibo+orc2J2Lm1TYEGYcVvmT9nS2mMSZBani/p6nNuGTFZFMn/m184ZU6NbfaZU8fA5PiRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724418627; c=relaxed/simple;
	bh=M/+xF9xSlz9NcGsxeV2F450JkTdMnQxBFMimF3H5KIQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DM0ieln98HFoEO6Hp9RZutrMb1hF7osIR3r0ahQNcIhwhd9zwwYdRafUO/pzPbtHr57MhK11oVkLQuqz+aXns5avxQdqnBpzCjDLAntabi+77lO0q5J4L67ZpatK+ALhnviw/fmFkXrIWgoVJIZddkMZeF/Ax+5cu/mRR7vgoYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98)
	(envelope-from <vincent@vinc17.net>)
	id 1shU3c-0000000CBE3-1mSw;
	Fri, 23 Aug 2024 15:10:24 +0200
Date: Fri, 23 Aug 2024 15:10:24 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>,
	DJ Delorie <dj@redhat.com>, Carlos O'Donell <carlos@redhat.com>,
	Xi Ruoyao <xry111@xry111.site>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] ctime.3: Document how to check errors from mktime(3)
Message-ID: <20240823131024.GD2713@cventin.lip.ens-lyon.fr>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Paul Eggert <eggert@cs.ucla.edu>, DJ Delorie <dj@redhat.com>,
	Carlos O'Donell <carlos@redhat.com>, Xi Ruoyao <xry111@xry111.site>,
	GNU C Library <libc-alpha@sourceware.org>
References: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

Basically saying the same thing as in the other thread.

On 2024-08-23 14:58:39 +0200, Alejandro Colomar wrote:
> ISO C specifies that tp->tm_wday is unmodified after a failed call, and
> puts an example where this is used to determine errors.

This is not what I can see in C17.

> It is indeed the only way to check for errors from this call.

So you *additionally* need to test whether the return value is -1.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

