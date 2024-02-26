Return-Path: <linux-man+bounces-481-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC92868029
	for <lists+linux-man@lfdr.de>; Mon, 26 Feb 2024 19:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C8761F2828B
	for <lists+linux-man@lfdr.de>; Mon, 26 Feb 2024 18:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD0912F597;
	Mon, 26 Feb 2024 18:56:05 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9B41E866
	for <linux-man@vger.kernel.org>; Mon, 26 Feb 2024 18:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708973765; cv=none; b=bfpKe1qx/7C2KCEVu7Oa/2GaBLVRsbxGV75yFPQVZqx0p4u/cb0HoUg8VdEAgblGMwDQULoVNzSHjIvAQVkxMZCft55s0MvsTx3DIjTeKSPUQ5SozN1XZQGzZF81nj/uW5zJoO9BL3zcybMf4wJ4lFThv+YNZU3xN1GxWTdyJyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708973765; c=relaxed/simple;
	bh=3O3YeZHwQgtPMm24sQOuVBKUHnYAcC05s8hJoXyJZlQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ki+yzMFnyRTJae9s9ZN/ItwUaEDKkJ6+VMEKDKMP7+tP1SjNlLOBK5kUeDhTGhMy17BhEMJ61bLmP25kqQ+JAPJqaYdk+xrfxlSguuoU4t6cbZiA2HPs5zEAkOA9PRV2k6MxGTv2ZmuoVu5ux3UhBW5dBdH/hjPDtK3FaEvWT3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
	by vmicros1.altlinux.org (Postfix) with ESMTP id 921D272C8CC;
	Mon, 26 Feb 2024 21:55:54 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
	id 7F9127CCB3A; Mon, 26 Feb 2024 20:55:54 +0200 (IST)
Date: Mon, 26 Feb 2024 20:55:54 +0200
From: "Dmitry V. Levin" <ldv@altlinux.org>
To: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	dutyrok@altlinux.org, kovalev@altlinux.org,
	"G. Branden Robinson" <branden@debian.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v3] delete_module.2: Update man to current syscall
 behaviour
Message-ID: <20240226185554.GA19542@altlinux.org>
References: <20240226120856.21493-1-oficerovas@altlinux.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240226120856.21493-1-oficerovas@altlinux.org>

On Mon, Feb 26, 2024 at 03:08:56PM +0300, Alexander Ofitserov wrote:
> Parameter O_NONBLOCK described in man doesn't exist anymore
> in kernel versions 3.13+, which is quite old,
> only O_TRUNC parameter present for current kernel version,
> O_NONBLOCK does nothing.
> 
> v2 -> v3:
> subsection Linux 3.12 and earlier renamed to O_NONBLOCK
> removed info about arguments for kernels 3.12 and earlier
> added semantic newlines
> 
> v1 -> v2:
> added behaviour of syscall for kernel 3.12 and earlier
> in history section
> added commit hash to commit message

Looks like the change of the commit message introduced in v2
has been reverted.


-- 
ldv

