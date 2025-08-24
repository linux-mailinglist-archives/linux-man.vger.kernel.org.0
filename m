Return-Path: <linux-man+bounces-3651-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEACB330E1
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECD0C7AD339
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57FE6244663;
	Sun, 24 Aug 2025 14:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="nhIC2oab"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01FA2DCC01
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046968; cv=none; b=Pt5hgODM9aZ2jvJs5KDiWdh0J0zgxdc+KnZevK4rbMnCjCGzJE1sXAsBz2jnMyJ8qmxKlsPheruPvf2c8c3nCIFmBlKnMI46rXwv9dPKKnP69nhcwMzLFmbQ8Ct+XPJWJIrrLS8hOwTEjiMe3HkRs9mJ6h8j2rjC9REE23rnp18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046968; c=relaxed/simple;
	bh=+qng4uy6XTknB5TKw6MR0A5xHk227DHCKhzr6h+5D18=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=F+cXrJSTVXjf+xNDJzimtKXYyFwARzTBFb0qusufSNXZ0yqM+j66H6iyhL1QYvAf0KDmPn034BOWaikbkNkPRq8xfkgVgim4heE//9Vc4Upuj3qXKQkCuPqQa/5kx3iUVRRG0HAXK/FtyJv9RO3o0RjNbO0nW9JmuyHWsAZiLqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=nhIC2oab; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046926;
	bh=30FRr1yVkvtUg2O/7re0lky7s/zg9AWfMfY1ShJHEnY=;
	h=Date:From:To:Cc:Subject;
	b=nhIC2oabdchNtsD9gRk6ahhBnqk+gTIypdWiY+MwHLd/up8APhHfsLSC2vv5T4+UI
	 lKkVy5aQE1/ryrEQwCiyJ+DXwlxmYpMBBiRsVbjW6mp1iS32+frHMiSxaSvxGvjRbe
	 jkXd6wIl2DKC9+QlHo6DBFNN2plsxnLQa73W9+R1YskWfNd+FNUm1M4RvmGa4Wjr3M
	 mJYn1RuHQfMEbA3WI6IDpyGo50Dr7VIJ6mincidPl4WjaHQZeG9m1K5cM9NWMoqOBG
	 RLuIHgY8dYQ3ttVBrIIZMe2Zgu+NjUnhQ9tXgiiDZS1UpZXsnnCzEoyGDsACxcnGrj
	 hnoxj0om7sauA==
Original-Subject: Issue in man page bsearch.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021756.0000000068AB264E.0013959C; Sun, 24 Aug 2025 14:48:46 +0000
Date: Sun, 24 Aug 2025 14:48:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page bsearch.3
Message-ID: <aKsmThLKLx20ELEq@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n, size_t size → B<…size_t> I<n>, B<size_t> I<size>

"B<void *bsearch(>size_t n, size_t size;\n"
"B<              const void >I<key>B<[>I<size>B<], const void >I<base>B<[>I<size>B< * >I<n>B<],>\n"
"B<              size_t >I<n>B<, size_t >I<size>B<,>\n"
"B<              typeof(int (const void [>I<size>B<], const void [>I<size>B<]))>\n"
"B<                  *>I<compar>B<);>\n"

