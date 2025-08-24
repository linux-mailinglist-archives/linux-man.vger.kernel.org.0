Return-Path: <linux-man+bounces-3613-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAF7B330B8
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55A83203D76
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C31244663;
	Sun, 24 Aug 2025 14:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="G5EAhQin"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D681DDC3F
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046949; cv=none; b=rsbU/7wirQyMWOsNypriz4y1dx9rdVJUFWt2rGNliNDv4XiVD4jcPI79H1mIscDXHzo3p40tTnfydOUIfeMgdZMf0df25s4+L5+yok9xw3In2udhFp09vzjK+kjowZiUB80obbraAyA4ORgVkSCozMdhJvRi7R1rfID2NwfPrEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046949; c=relaxed/simple;
	bh=uG7ELzIfdlvkcUR/in2nVvjJoTgOxhxUGjtcsmRW46M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=nNllFxKBM0odhQT7jk7MQlBnNC9sYzWH+vM6gtWCyC7jsvXHejL0CcFMp2tafsysHuO7E/x55JQXyuTQjEXqPTt4elR7kMCb+8hzVfLVyE/JTRgVP6kmHHweBsTzC++fTok9AbfazlrkeWSGW5JJtQqQ2hAcwhCHXVMZMhldUTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=G5EAhQin; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046921;
	bh=89ZRSFeONwsjBxpGmMCjeePIv8UZeIxCwA0wZQaZREE=;
	h=Date:From:To:Cc:Subject;
	b=G5EAhQinnKJOyOheVMwXebviLqjDpB+d00mk/8MvHpSretM6TpYp76hI5X/3bFZpA
	 WnxZBdai4LOMpFEKrU6qYOvt3aMT0srWEQsia72Zzka2tpQbn7DcLCjQsuGEAamvOM
	 fEGR8T/4QJWRqab3YXTp9VAijd5Gx1BzPkQEnGvhs1NYH0hcrWdglH3Rw6nSpklPmW
	 rNi0HDp1PF6BEUdFTlBvhvu4y+iltaVq5yjMw/ksOUDECw7vRqb6W+Fb60ETK0vCr7
	 k4KT3O4F3KeOx2xMp5qKhePoJ+rK1fe9jtt34i8163Gr7M79COYkt8dKQOxoPFT5Iq
	 F9KF2ofs+ZNiw==
Original-Subject: Issue in man page getmntent.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021494.0000000068AB2649.001391E4; Sun, 24 Aug 2025 14:48:41 +0000
Date: Sun, 24 Aug 2025 14:48:41 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getmntent.3
Message-ID: <aKsmSX0uqEwFyaZE@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t size → B<…size_t> I<size>

"B<int getnetent_r(>size_t size;\n"
"B<                struct netent *restrict >I<result_buf>B<,>\n"
"B<                char >I<buf>B<[restrict >I<size>B<], size_t >I<size>B<,>\n"
"B<                struct netent **restrict >I<result>B<,>\n"
"B<                int *restrict >I<h_errnop>B<);>\n"
"B<int getnetbyname_r(>size_t size;\n"
"B<                const char *restrict >I<name>B<,>\n"
"B<                struct netent *restrict >I<result_buf>B<,>\n"
"B<                char >I<buf>B<[restrict >I<size>B<], size_t >I<size>B<,>\n"
"B<                struct netent **restrict >I<result>B<,>\n"
"B<                int *restrict >I<h_errnop>B<);>\n"
"B<int getnetbyaddr_r(>size_t size;\n"
"B<                uint32_t >I<net>B<, int >I<type>B<,>\n"
"B<                struct netent *restrict >I<result_buf>B<,>\n"
"B<                char >I<buf>B<[restrict >I<size>B<], size_t >I<size>B<,>\n"
"B<                struct netent **restrict >I<result>B<,>\n"
"B<                int *restrict >I<h_errnop>B<);>\n"

