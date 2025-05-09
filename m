Return-Path: <linux-man+bounces-2870-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BF19EAB124C
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 13:36:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 316831B66627
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 11:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B127428ECFE;
	Fri,  9 May 2025 11:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=cwi.nl header.i=@cwi.nl header.b="zAKr9bw7"
X-Original-To: linux-man@vger.kernel.org
Received: from fester.cwi.nl (fester.cwi.nl [192.16.191.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8A728ECD8;
	Fri,  9 May 2025 11:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.16.191.27
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746790575; cv=none; b=NrgEp2DgnMhHRkCyGYGAUNSoBqyiX+JcINeod+LhkhWeKqgK4BQeti9jzlqN9fJlXNzYT+VGsJQDo/yq9OaMugyLulXy6cDbYBVpfhSZwOUSDLorsgMxFhuIx14TOuRGcuVY6NwpoT9DSZrNnSNUkNzTfx7YawZuODCtTHO7wSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746790575; c=relaxed/simple;
	bh=Dpm4YNg5M0hipHDCrxWIpuQhnO6t8yrhT2g8ZtZdqT4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gkhosvom6qsCF8+ePWGUe3AsF1SIjd64VIUixdY5AUcVcOzj/EQS5TAxjfP8og078W0bg4OD69Ex+yXDashxXfY3ATahVEJFlbQ7i5zLr1fdsqpmLGc1h5ihxzorkYgWZlV5fzjqiL6k47tTnSunH/zLX5me47O4gEPC4w7r6xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cwi.nl; spf=pass smtp.mailfrom=cwi.nl; dkim=fail (1024-bit key) header.d=cwi.nl header.i=@cwi.nl header.b=zAKr9bw7 reason="signature verification failed"; arc=none smtp.client-ip=192.16.191.27
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cwi.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cwi.nl
Received: from localhost (37-251-114-171.fixed.kpn.net [37.251.114.171])
	(authenticated bits=0)
	by fester.cwi.nl (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTPSA id 549BQRtH028076
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 9 May 2025 13:26:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cwi.nl; s=default;
	t=1746789988; bh=Dpm4YNg5M0hipHDCrxWIpuQhnO6t8yrhT2g8ZtZdqT4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zAKr9bw7FQlEQ9BDl4tn9ctk7sQpW65cf6kUtenSk+oF3xILc8cWfSrxJaLsr3UiT
	 rmWiqZiAaEzT4bNVPucs8An3PBc9RqPEumUhwRtXzvTLG2tvuriU6+Gy+nh49FnFuS
	 IGIhWaop1Q2wdDpjnGoI5kjNIBpE8O0axwrV89Aw=
Date: Fri, 9 May 2025 13:26:27 +0200
From: "Andries E. Brouwer" <aeb@cwi.nl>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <20250509112627.GA924923@if>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>

On Fri, May 09, 2025 at 01:15:06AM +0200, Alejandro Colomar wrote:
> Gidday!
> 
> I'm proud to announce:
> 
> 	man-pages-6.14 - manual pages for GNU/Linux
> 
> 
> Global changes
> --------------
> 
> -  CREDITS, *
>    -  Move in-source contribution records to a new CREDITS file, and
>       update copyright notices to be uniform across the project.

Good morning!

I wonder about the legal status of such a change.
There is ownership of the pages, and a license that allows
others to do certain things.

If I pick a random page, man2/unlink.2, then it used to start

.\" This manpage is Copyright (C) 1992 Drew Eckhardt;
.\"             and Copyright (C) 1993 Ian Jackson
.\"             and Copyright (C) 2006, 2014 Michael Kerrisk.
.\"
.\" Permission is granted to make and distribute verbatim copies of this
.\" manual provided the copyright notice and this permission notice are
.\" preserved on all copies.
.\"
.\" Modified 1993-07-24 by Rik Faith <faith@cs.unc.edu>
.\" Modified 1996-09-08 by Arnt Gulbrandsen <agulbra@troll.no>
.\" Modified 1997-01-31 by Eric S. Raymond <esr@thyrsus.com>
.\" Modified 2001-05-17 by aeb
.\" Modified 2004-06-23 by Michael Kerrisk <mtk.manpages@gmail.com>

Today I read

.\" Copyright, The contributors to the Linux man-pages project
.\"
.\" SPDX-License-Identifier: Linux-man-pages-copyleft

I no longer find the information about who owns this page.
The old permission notice does not seem to allow distribution
without this information.

Andries

