Return-Path: <linux-man+bounces-4500-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F80FCDC8BC
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17AA0304E3AE
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44FFB358D24;
	Wed, 24 Dec 2025 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="S7Eq5s0l"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6124D357A54
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587114; cv=none; b=uLt9YYJ4gUSgb86vNj+I5oYktyMCsHjIzNcSyaUz5KJa/9YlYjBllB9Dlf7QA6GqV+zvCYx7nwI/PnwL3aCwSeDuJz54FN++ORE87+qKFbu3wt+yvlUqKYHAuCWejUDCPCDih7Q+/2wrtG/Ahrflbk2wliD4yhI3Ha2o6HT66Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587114; c=relaxed/simple;
	bh=M7CsvUZ68/Jy7DpYBEwWl5X12I3Kw8y+SaQAFq2GAEI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QuWg9NsorLCvnTURDW7WnM0EueYG0VeTVlE2TBWxqlh28Q/tveSHw8DjVfpvz/EaZf/QnBaTIUIdf6Y49+j+rCPi5IExYMq5MNml1QMW5j0huJl2N/OD+DKjY5jKZm2DJg6G6lLlbbzlQ8j2a2u1wkhRPdStQhJFaRDCskBRsZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=S7Eq5s0l; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587103;
	bh=1QpAVxRcVMdx1oMnn1LUzdxYQS/gdXLODrZYJlLEby8=;
	h=Date:From:To:Cc:Subject;
	b=S7Eq5s0lXD3QigR9G7MhvzulyxHLCno38t0ZILogwD9PAn/fKx8Om7HCLaNEQQlK7
	 2EibZ2aqQULj/PxNEeAK+S9aQgoG/wt2i+Sjm3imvUuDgs3+wRRu1+cRvgy4uwkUIm
	 EVu60Id3M/LkOq8OmkOhuWOeVUpVPhnMQ3Nhx017qm7T/417wQbMm0jahnxaB6SybL
	 Efy99LXp9MnY5k862WiCMnhl3cf6dNQ3azqMT9ve1Lxsknz1xgoH+fx9Gx1SJ97Iki
	 vWqubqk+7hb0KN8n3/ISoxE/PPpsiomtLc/YnpENKurS6UQ4Z2L92TQ1mUHDFasIUQ
	 0TJNVCdt/MlXA==
Original-Subject: Issue in man page  PR_SET_MDWE.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002097B.00000000694BFADF.0031988F; Wed, 24 Dec 2025 14:38:23 +0000
Date: Wed, 24 Dec 2025 14:38:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_SET_MDWE.2const
Message-ID: <aUv631UU4y9H1x90@meinfjell.helgefjelltest.de>
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

Issue:     mapping protections → mapping ?

"New memory mapping protections can't be writable and executable.  Non-"
"executable mappings can't become executable."

