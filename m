Return-Path: <linux-man+bounces-1958-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9539D0313
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 059191F2315D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A0913AA5D;
	Sun, 17 Nov 2024 10:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="JyB/FcYn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F31115B0F2
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840700; cv=none; b=q0oQ10KVOsvMWYYLDfI8j5YmIG4da0hMeR21o+1hpj40YKqXVNe2+fyyCJhWEhIMk8Aolc2gKgO8ovE6dGXJAgC2+idk/TXG+yOHZh+M0h6fbW58VuT+9NFjXqhS5XoHzJG5vwBQZc00T/WpXwCNE5dCqlvGHIapdRdav+wo3Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840700; c=relaxed/simple;
	bh=/7VNzKW4Hnquxpg5NM2CqM4Pyk7PI4DM4nU7WeY4Zsc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=o1shcMgg5yHYF6Fb4BYIJR6QHcyMAQSV0nzVt55Y6n92N4NEQpMPWf/AusDYO47f6cm4StxMawXsZeDpy+WRtxZHE81OyNu27pfadWUlaKDMDvoRLIGua1VXLh3aJ0q4zvqjT/HWzWfKSPSfk6k6iduZW/KvbO4Lp+dU86DgasY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=JyB/FcYn; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840384;
	bh=2t1kxlucPJAfQTfRZN0db2F+ARC+oCPnEOpMrXm9H5s=;
	h=Date:From:To:Cc:Subject;
	b=JyB/FcYnW+EaNszdXwMyxt40avjXzO6YACpTEERc+LtkBl1RefHz99PULiNvKT2wB
	 6uZISXJTMONRI1NoEjr9nc6aQM6uwTNVGEDDsYxaVgeteijbruWiUPOSLmqS5fbIlB
	 xcokKCRoA/2WuKQ1UqQkJ9Mt/9LCimaCVQn3KWAexZwwCNXrohylGesPeHm2etM1pt
	 ZKzUdsBjt6Ck0zTidY7XSfo2r0JSwRPI1JowVaTyFP2eiCl72dG3EoUqifX3RxCx9A
	 GSOuTnqnnn4vEwWlK71FI4pi7zICxjFYwihz/NhMv5UI49LeYq0RG4ztHnV5R+pIJC
	 nw6WO6jIGbYUA==
Original-Subject: Issue in man page sscanf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021110.000000006739C980.003FC4A9; Sun, 17 Nov 2024 10:46:24 +0000
Date: Sun, 17 Nov 2024 10:46:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page sscanf.3
Message-ID: <ZznJgJrfwS4O3toC@meinfjell.helgefjelltest.de>
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

Issue:    on other architectures → on other plattforms

"Some combinations of the type modifiers and conversion specifiers defined by "
"C99 do not make sense (e.g., B<%Ld>).  While they may have a well-defined "
"behavior on Linux, this need not to be so on other architectures.  Therefore "
"it usually is better to use modifiers that are not defined by C99 at all, "
"that is, use B<q> instead of B<L> in combination with B<d>, B<i>, B<o>, "
"B<u>, B<x>, and B<X> conversions or B<ll>."

