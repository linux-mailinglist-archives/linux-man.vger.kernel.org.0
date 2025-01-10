Return-Path: <linux-man+bounces-2214-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D67A08634
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2025 05:31:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D40BC1888BA7
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2025 04:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A35F4E2;
	Fri, 10 Jan 2025 04:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="JgM6OABO"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A63BE49
	for <linux-man@vger.kernel.org>; Fri, 10 Jan 2025 04:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736483474; cv=none; b=c0SebrPMAeFWWRlWx9THRiIkCwXd32BesXwFij7tTj1dTgciXl5GYGSexy4CagCAEmXy5wihmVkRc96J72IbQXWyakmD6QERLd2D0Mv++6Vj3uBFKdFEJ+6r5Ym5ZgNZFvn7Pz8phGFn1tgvWVE5ug+0oFI9DyAbfuL2KmdJtbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736483474; c=relaxed/simple;
	bh=Wh5qDxrA85TBlxzd1oAPiTvCXNQIw60ZnWpnDlbYdpQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:
	 References:In-Reply-To; b=IM8CJMaOh9XTeq9CwU7ig2fgey+auuH+OhFnd+vuGi/8LxtUsRWUB2y7sqmoqpL1V/d9zBicr0tVv6hZ8yFw2uzjZ7WIoxkVUotNvCF4/JAqT/0D+YXPGyrX/xA0oXFxy0QqgwH/nnz2dTMZv9/Y0Om22ug7q1fQXaEuXpoR5wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=JgM6OABO; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 4CBA725D09;
	Fri, 10 Jan 2025 05:31:05 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C56zXUfiNfDh; Fri, 10 Jan 2025 05:31:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1736483461; bh=Wh5qDxrA85TBlxzd1oAPiTvCXNQIw60ZnWpnDlbYdpQ=;
	h=Date:Subject:From:To:References:In-Reply-To;
	b=JgM6OABOL8lI1037hBOFjocACS2y1yF92rWqGI3jaYzUIHalF6T+4CPsHwxtDPsrI
	 mq3bShbF6imZ6eHqI59w2a5qS/TdgukvczfqRygTubsKOP4+n4dSTceoZrYqiEtuIu
	 UuabmjnGnNSs4YZJ0t8oJI/HN6+h17M91q6ce0caosFLdmGgEhjYVKQMMlb7O1J5/m
	 uUBq6yMTSEbCg408Yuwp3z7n6YTND+rMkXK+OgYUrodm6ImENQtlomNlVzXz2nHseB
	 FF4EMm+TVEVnwFSNuVUrwPGegpSgwj0JVryKDMDZSzz3vZ8Vw3tZ0wVKE/VCgHbMpT
	 pR50IZYPr8Ljw==
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Jan 2025 05:30:59 +0100
Message-Id: <D6Y40GJFESLL.DMBT4LN9UI54@disroot.org>
Subject: Re: duffman(1) (was: diffman(1))
From: "onf" <onf@disroot.org>
To: "Alejandro Colomar" <alx@kernel.org>, <linux-man@vger.kernel.org>,
 <groff@gnu.org>
References: <20241125124404.h37pgmy2pxuzxevg@devuan>
 <D5VE1OMV9LG2.3GYDJOAGFIR0F@disroot.org>
 <20241125163421.f37ftfuxq33bax2v@devuan>
 <64nwglzgyqvdpkruvwnp53gd35nzib7xjbluvph7mqg75cjtn6@fm4ckauriwfi>
In-Reply-To: <64nwglzgyqvdpkruvwnp53gd35nzib7xjbluvph7mqg75cjtn6@fm4ckauriwfi>

Hi Alex,

On Thu Jan 9, 2025 at 2:59 PM CET, Alejandro Colomar wrote:
> I have added a duffman(1) program (script) to the Linux man-pages repo.
> It is similar to diffman(1), but it diffs the git working directory (or
> a commit, if specified).
>
> [...]
>
> I found this very useful for reviewing changes.  Maybe you do too.  :)

Where? I don't see it here:
https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/tree=
/scripts
nor here:
https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/tree=
/src/bin
nor here:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/scripts
or here:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/src/bin

~ onf

