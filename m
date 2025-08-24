Return-Path: <linux-man+bounces-3621-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25271B330C3
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B64237AA1EF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1A662DEA7B;
	Sun, 24 Aug 2025 14:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="qRDB5sJS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE102D543E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046953; cv=none; b=B8pxeTQnBFajsLPNFDIpFfiAbtwLMVXhQvpOK4ejZKI3ijMy5KV4MBxSD++lXSobcMj8llxyjW2sijRCJshFHaRaIMx+8kpiLRxSJUbdHKvsce7OQ7otgM0ldmZtRABN49McoXh65kg6laPhIF10sJCT7oQlMju7SzM+m+RvbfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046953; c=relaxed/simple;
	bh=9tfHZDcOca66SCArpEdCRVfHF7vPfsBxRjhC7Gd8L/E=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=BH5x6AtUGtZGc+uZQhSx1ta8/C8V982ozTNECkbVE4ueVNBlXW7KsR94PciJ1DDseZlRUX6fd03Qut0RHJZVjmAWtV6Cpnx3QOOQsD6JH5Jn/2SzE1qYS58zzDKCbXtqRb0c6dZhLzcqASEhxtn7r6Lixflgi0BHjHVwgqtIMQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=qRDB5sJS; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046922;
	bh=2eC2+vHPn7l05s6PFr1HCD+JWQtmLfZ3uVxHKrwAR5I=;
	h=Date:From:To:Cc:Subject;
	b=qRDB5sJSJ0+6gMIe8EwwijzCWnxqqP1PDTgQ/WNd8jw8lkrg7CgCN9IEBCwiNJe5M
	 RxMA3QL9ukcubIFLyt2yuuHkDRGbNlD9H3pSBwU4WIPweS7YilGG9iLzlA+o2VZR3+
	 fR3QlypQvhQatOrHT4NXG5sW6sr1beMK1nbvjQj9S0csH8P4bl9LoBd2Rl2hq8VRAW
	 IsUFWVU9Dq2kacG73vBHi+x0MykemxpOG2lIOmtRAra8SdGOeRN7oswRxeDKfuavJp
	 8HXeNk38cstgbmRP+9959rmzhwcxb+ktvCZ2Hi+VjXWLNhthyA1Vbl6SmwxbGTIpG8
	 ODZHBjSA8mOXQ==
Original-Subject: Issue in man page gsignal.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021722.0000000068AB264A.001392AC; Sun, 24 Aug 2025 14:48:42 +0000
Date: Sun, 24 Aug 2025 14:48:42 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page gsignal.3
Message-ID: <aKsmSnLgDchJexSF@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    Does this mean, for glibc 2.19 both options are applicable, i.e. _DEFAULT_SOURCE AND _SVID_SOURCE are necessary?

"    Since glibc 2.19:\n"
"        _DEFAULT_SOURCE\n"
"    glibc 2.19 and earlier:\n"
"        _SVID_SOURCE\n"

