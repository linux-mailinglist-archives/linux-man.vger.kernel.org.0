Return-Path: <linux-man+bounces-3657-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE43B330FB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:51:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F9903B7D8D
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426642DA767;
	Sun, 24 Aug 2025 14:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="uOTjbJDg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CB62DF6F6
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046971; cv=none; b=AsxS0UL1kL/C/kTpkQD9LuOXCYJg5NyaXc832wIWzOl836S+0CHYU3vprJIYDOP4SnxRnuL2v9nGodSxusA1IsjZehwlhI2DQUgOPAgWps2rW+0ZlnlBob0YRE1Z51SB6NaSfpMXlwVh/dMp9dZUWRauNDpNLV3mf5tjQzRTKtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046971; c=relaxed/simple;
	bh=+qAuZisQqccvnzuJh5AOejR5POAiqyOO9w6HHnlCqtg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=pAqggfsVpBy/ssWDnDhFXiiyX/mj2bJHD1maz4mUx7vk5f93/7+kn8QYCaXNjshl7rm9hgH0BPv5EvsEX0ld1npMgc3B2EN//HHe9I3qPhCL3/bY/HwaHp6DP8+GkEvQhK1EScOAaMNDgNARwgNg000LbmWdNk7YMSs4R0RSkoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=uOTjbJDg; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046926;
	bh=KlF/r9jk5LN5H+pca6ArzNtLuqZp+SkErhfADeH0Trk=;
	h=Date:From:To:Cc:Subject;
	b=uOTjbJDgL+IWZtkQvK7s/NjAeXpZIqTvpigVE8rsXdYA5ReCKgBEhQCSWOyTkqlxZ
	 LBV0oWWqdbmVCuVjVpXwWQmhgmbxE4gCwsTiqJpeNjFfye5jlOVjiFYd7J5lm+LwYS
	 QtdUxycUGtG3eFcjLnZpwTjeaYfyar2gXSas2+f2BmD1bEt+yCknf6fOyzAFUkeyVV
	 8DeME2Pqb5NsvJLz+e9285s65nrcdO0ryBfDNHAxkZnnMSVircp5qbOnQcUK2JsqPK
	 1kbyo1sGMxoYm9h5QYDDHuVTXcmXFHPu3a65DTrdmBRaXoLLwNV4wpZRStB2bOdEih
	 7ga79zg84D/Gw==
Original-Subject: Issue in man page PR_CAPBSET_DROP.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002162D.0000000068AB264E.00139632; Sun, 24 Aug 2025 14:48:46 +0000
Date: Sun, 24 Aug 2025 14:48:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_CAPBSET_DROP.2const
Message-ID: <aKsmTs9d2d5oKhGN@meinfjell.helgefjelltest.de>
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

Issue:    B<PR_CAPBSET_READ>(2const)  B<libcap>(3), → B<PR_CAPBSET_READ>(2const), B<libcap>(3),

"B<prctl>(2), B<PR_CAPBSET_READ>(2const)  B<libcap>(3), B<cap_drop_bound>(3)"

