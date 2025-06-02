Return-Path: <linux-man+bounces-3077-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0EBACA9E7
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 09:26:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2091D188B589
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 07:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5821A238E;
	Mon,  2 Jun 2025 07:26:26 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from ore.jhcloos.com (ore.jhcloos.com [192.40.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D8215A8
	for <linux-man@vger.kernel.org>; Mon,  2 Jun 2025 07:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.40.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748849186; cv=none; b=u8PxrsWj6PAMmRxEFvr7HMu8H9usIXi+lJm7st7sw39dur+5JKK66cM3Occ3Fshva1oKZTIqWsdC8oA25iKS94YBDWYMVzErtysufZqhJozu0u29LZo1Kc02yR+U90ncEap38yv4tLa1WqOQuoHyOwb9KuTAY01+XBmPTJk+KvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748849186; c=relaxed/simple;
	bh=M8fXZUXDn8YAR5dEgHNRoO+MJCOQwYSaJNXXKw+SYmw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=FHzVyJJbcdrtJV2mFBHH3QiUj3zRzoaWZBuMbgWv6msfRLn/gd5e0QXpRpMgaMTx1sSCdj0YxoSGd68NiKmab0fY0hNBg7P7Hc3JxO79Cmg1X4rbb9Kf1WqpvXGjyUQpkbhIwhXStMbPoZp0diraghpyPgOp/ZRTh17TZNzn5uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jhcloos.com; spf=pass smtp.mailfrom=jhcloos.com; arc=none smtp.client-ip=192.40.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jhcloos.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jhcloos.com
Received: from lugabout.jhcloos.org (unknown [192.168.1.3])
	by ore.jhcloos.com (Postfix) with ESMTP id DC0091E01F;
	Mon, 02 Jun 2025 07:16:12 +0000 (UTC)
Received: by lugabout.jhcloos.org (Postfix, from userid 500)
	id 31FA63017CE6B; Mon, 02 Jun 2025 07:16:12 +0000 ()
From: James Cloos <cloos@jhcloos.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Joey Hess <id@joeyh.name>,  groff@gnu.org,  linux-man@vger.kernel.org
Subject: Re: on "bricktext"
In-Reply-To: <20250602064936.wrizwxkcdpx4btpq@illithid>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
	<20250502120139.yqstcq32hdtagozl@illithid> <aBTDZiUVotN_80RM@starship>
	<CACRhBXOPUdngLptS-oGqkeCZ=R=as8Fhkf6jSuznC+TMbbQx0w@mail.gmail.com>
	<aBUTF6SphOspqAKT@starship> <20250503001407.fduziqcvc5f33azs@illithid>
	<aBjgpgYzrRKsWn6s@kitenet.net>
	<20250602064936.wrizwxkcdpx4btpq@illithid>
User-Agent: Gnus/5.13 (Gnus v5.13)
Face: iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAgMAAABinRfyAAAACVBMVEX///8ZGXBQKKnCrDQ3
 AAAAJElEQVQImWNgQAAXzwQg4SKASgAlXIEEiwsSIYBEcLaAtMEAADJnB+kKcKioAAAAAElFTkSu
 QmCC
Copyright: Copyright 2025 James Cloos
OpenPGP: 0x997A9F17ED7DAEA6;
 url=https://jhcloos.com/public_key/0x997A9F17ED7DAEA6.asc
OpenPGP-Fingerprint: E9E9 F828 61A4 6EA9 0F2B  63E7 997A 9F17 ED7D AEA6
Date: Mon, 02 Jun 2025 03:16:12 -0400
Message-ID: <m3bjr6obpf.fsf@lugabout.jhcloos.org>
Lines: 14
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

>>>>> "BR" == G Branden Robinson <g.branden.robinson@gmail.com> writes:

BR> I found an exhibit of bricktext from 1998.

BR> https://lists.debian.org/debian-devel/1998/10/msg02449.html

didn't we all do a instance or three of that back in the day?

ie adjust some words here and there to arrange justification?

-JimC
-- 
James Cloos <cloos@jhcloos.com>
            OpenPGP: https://jhcloos.com/0x997A9F17ED7DAEA6.asc

