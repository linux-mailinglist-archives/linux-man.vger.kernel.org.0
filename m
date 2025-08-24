Return-Path: <linux-man+bounces-3680-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8827B330F5
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9234B203F64
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1382DFA2A;
	Sun, 24 Aug 2025 14:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="LiUYBa3J"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3382DF70E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046982; cv=none; b=aZ11MmGFtiv3/Ezv45yjMqecrc+qMycnwzKn8u2QoCIiBXZA6Pjqf9up6g88aEmz5Zc23Z89Tmw47jsmHEhPM93YvAmHBWbNkB8Upz9EM/z01Z+v8Hdcx2xUzvmXIbfhnaa/NpchENXn0GLg35D1DVFnevDahicKkA6pzLprUNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046982; c=relaxed/simple;
	bh=3mWlKiU9/5cWYzx91vC8tmIJ/QIV+T7vjnbqHhdTOow=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QzezmKM3olTM9AYmvg2x28dX4QKAQ/+rU/HE/YlCcI63LhBH7ByBlHDxcQu/mqGbqZxt39IYeDOH7DrZvKFZYtqkaDEK+KXLxxAsEZh6qu9jRg/Mnl2BgmroehjemPG3SxumWjAt2byr83BqR3qUSn0Xt8FFTmV8kzf22I0PuIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=LiUYBa3J; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046930;
	bh=ft3sd0WT7WQ1nK2Gx2J3nH7F/MybN+uvMt8CcEbJTF4=;
	h=Date:From:To:Cc:Subject;
	b=LiUYBa3JCxaNF4p7++D8LNuqW9eMQE9h2aEyWfS+geAGeGtb6Y/0oEIawlzPtuWGV
	 h+OP3yBY3nKK/N50K0YMQG/JIWji4S+xG09Q+01DsYvyqj4sJzYVNCPt849Ust8Lf6
	 PVq5WLEPmsWlkNLR5y9W2N2sfTLfxqpm6IsmQ2d095fNGhB6aseUQKoca6BHA57Jhs
	 gR1scj5zyQX1dczamoPH7lwtB/UyPGGiE8WQlFhrZzjnPzpjS8dnOENpJaVL1/E4/6
	 O7ninI+OL9bkNq37Jo4aOEBuHpeF6ZNm8R2DC26OnXVHSREYTTNC0Mbq5EaY0Frl0g
	 4hbXMt1QCrVkA==
Original-Subject: Issue in man page readlink.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216A2.0000000068AB2652.00139872; Sun, 24 Aug 2025 14:48:50 +0000
Date: Sun, 24 Aug 2025 14:48:50 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page readlink.2
Message-ID: <aKsmUjePBeucwzSZ@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t bufsiz → B<…size_t> I<bufsiz>

"B<ssize_t readlink(>size_t bufsiz;\n"
"B<                 const char *restrict >I<path>B<,>\n"
"B<                 char >I<buf>B<[restrict >I<bufsiz>B<], size_t >I<bufsiz>B<);>\n"

"B<ssize_t readlinkat(>size_t bufsiz;\n"
"B<                 int >I<dirfd>B<, const char *restrict >I<path>B<,>\n"
"B<                 char >I<buf>B<[restrict >I<bufsiz>B<], size_t >I<bufsiz>B<);>\n"

