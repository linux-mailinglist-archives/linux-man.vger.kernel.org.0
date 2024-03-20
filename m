Return-Path: <linux-man+bounces-677-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA8D880E8F
	for <lists+linux-man@lfdr.de>; Wed, 20 Mar 2024 10:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D00911C20C12
	for <lists+linux-man@lfdr.de>; Wed, 20 Mar 2024 09:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FB1B3A1DD;
	Wed, 20 Mar 2024 09:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hadrons.org header.i=@hadrons.org header.b="ScQvvevN"
X-Original-To: linux-man@vger.kernel.org
Received: from pulsar.hadrons.org (2.152.202.106.dyn.user.ono.com [2.152.202.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8222638F9A
	for <linux-man@vger.kernel.org>; Wed, 20 Mar 2024 09:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=2.152.202.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710926892; cv=none; b=rW+wlWz71e03fTGlYLVSXcZmX7UOhuYsngD/vdoe7RLcC0VyjHVUpnUAY5zhv5BeluWAIlIEApjBTmKlgjceiVvxVBmFUgYtqbSmngdXDjGgo6bH3kjExj1zeGHhn02lzNrjXssaCnyIrMfnbxO/QoatWn3jWEOdZxx/aOOibgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710926892; c=relaxed/simple;
	bh=pVAXdLvt8im8AzNJgzGkzUPQfDen6haDpR53dy0CD+g=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WTt2ypRPZFp2zogIQ9IWt/v0iXxrFc9GK7EBDCkIV9HuoyL51NRbk4OBu62tr6PEphuOuUz3b81xDj/slQkdW8qkqlIBQBk2k5Eh1WLZVNRZxc51+2djyJGxQwu87JKeO1MFh6HiP7Fr7IjQ/ATsutd/jLejMA3CizkhxUyMCng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hadrons.org; spf=pass smtp.mailfrom=pulsar.hadrons.org; dkim=pass (2048-bit key) header.d=hadrons.org header.i=@hadrons.org header.b=ScQvvevN; arc=none smtp.client-ip=2.152.202.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hadrons.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pulsar.hadrons.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hadrons.org;
	s=201908; t=1710926311;
	bh=pVAXdLvt8im8AzNJgzGkzUPQfDen6haDpR53dy0CD+g=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=ScQvvevNa8dq3MIInR2TUGnc5+ocWQB3tOUYykP8JgD85DATV4fuBqWhKhuvV65XI
	 LVKcFEDpViVJP3h/ys795U5KzNGQgE0svahuDpCc5QOD0d+Ckx8SyGmVgMnp9bdjSo
	 eyyvXiKNtaX+Om10/0Ey/8GyjCbBmuO/KlAIx4hWXsQ5dBDJp7Sc0/8KtgifibCXN9
	 xInU06ZgRuBEGn2AsjrHCAtJxU/ZkEJr1AfIS288oV5/EdHmYCJ12ipl8b9k4OXYJ8
	 7oyVg5BbGR2pAItpvdsLXKYVAPqS+FiYkrKgV6riZRm6JYb9LoZIVN7GAUy/NMZrPo
	 oNZTETVpnWIfw==
Received: by pulsar.hadrons.org (Postfix, from userid 1000)
	id A51B2122C81; Wed, 20 Mar 2024 10:18:31 +0100 (CET)
Date: Wed, 20 Mar 2024 10:18:31 +0100
From: Guillem Jover <guillem@hadrons.org>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section
Message-ID: <Zfqp50nfXipmM4dA@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@hadrons.org>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
 <ZekNZuR3nRczAIqX@debian>
 <Zek9RRW28ZinfkxB@thunder.hadrons.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zek9RRW28ZinfkxB@thunder.hadrons.org>

Hi!

On Thu, 2024-03-07 at 05:06:29 +0100, Guillem Jover wrote:
> In this particular case, what I'll be doing is to remove the
> timeval(3bsd), timespec(3bsd) links everywhere, and stop installing
> the TIMEVAL_TO_TIMESPEC(3bsd) and TIMESPEC_TO_TIMEVAL(3bsd) on glibc
> based systems, and check on what others these are already provided,
> and install those there conditionally.

This has been done now as part of the libbsd 0.12.2 release.

Thanks,
Guillem

