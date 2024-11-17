Return-Path: <linux-man+bounces-1955-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 311AC9D030F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8D12EB23E97
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7160C13C816;
	Sun, 17 Nov 2024 10:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="nR7WdN0N"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FDF224EA
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840699; cv=none; b=HbpNi8DRGwfKlb24wjtnXnw7a52syDjAdGkGA6sVCJgTl6vQM/784bp6Snj+SD34ZjcdZ3pZxKPA9HCR/3C725Yxs+xzCLisQW65lLJ2KFshVcqFm+qO5Jsfw2t5mMJOeckGGmy0YUeG76jLgL4ffkqPx/r7ToPHh7xEsp6Uz5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840699; c=relaxed/simple;
	bh=Mm+F4A7Ek370CDGzdsjc3XsHW7/kpa6qNBxWuQXgurw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=XYfMe7wm9zvNebZz2ILV2vaSfNcTQ7qyB9BN8crGHXoyBulmve56M45I7UbtYSEN2NcC971cruOaGl+DVqSPQ2j013aHJDLJgAASTYZQSNdJkLwkoSsQaHQEAoxdv5+Zjb98UQkJBAwEBJR21G0XQJdpVhgHw/anCyLdq9vCOmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=nR7WdN0N; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840384;
	bh=vZNsNpI+9mIRMpbqWllxx/v4gTVTrq23TaORyzihkWs=;
	h=Date:From:To:Cc:Subject;
	b=nR7WdN0NKAOhwY49rTvnO4HjXmQOUs8lMw+F1prVviWjpXFZDU+C6NNDgevRBlpuO
	 vkS6r9qoBM4bHBR6ixwLrhjg8BsRdJIGevlgPOzTraXi3U0cXNV/moO1eiVuYWE4H/
	 o3xtoLv8EM2nXtOieMVxKYCczU1mtekuvZW0pbY8G3yFlneMilip61tHmViARDTnwq
	 OF4kemfgldY9gVuFVMyg1RCYRo1JVDlzrgwTvrGP76XdCTio7UyYKgwg7DPpyMaunG
	 7yF3CA9hmb0XD1uQ6USFQ9LOBgsGF+RUBdV8muqDZHnCPk7U9ivtRhut/dv/694+y/
	 1TqkSm8Qr0vfA==
Original-Subject: Issue in man page attributes.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A7A.000000006739C980.003FC490; Sun, 17 Nov 2024 10:46:24 +0000
Date: Sun, 17 Nov 2024 10:46:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page attributes.7
Message-ID: <ZznJgI1T6Sq11qnk@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue 1:  The function → Functions marked with
Issue 2:  reads → read

"The function marked with I<hostid> as an MT-Safety issue reads from the "
"system-wide data structures that hold the \"host ID\" of the machine.  These "
"data structures cannot generally be modified atomically.  Since it is "
"expected that the \"host ID\" will not normally change, the function that "
"reads from it (B<gethostid>(3))  is regarded as safe, whereas the function "
"that modifies it (B<sethostid>(3))  is marked with I<const:hostid>, "
"indicating it may require special care if it is to be called.  In this "
"specific case, the special care amounts to system-wide (not merely intra-"
"process) coordination."

