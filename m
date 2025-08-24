Return-Path: <linux-man+bounces-3601-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C128BB330AD
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C49D81B25A97
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2B5A2DECA1;
	Sun, 24 Aug 2025 14:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="uum7gXQt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495601DDC1E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046943; cv=none; b=ljGuYaktGAcFF3NuTM08kqWTFLqvcvM9YrKzmY+O14n+ICM2I7meFEi8ExaK8Sn3nAyhmESOcrPbvV/L6+Rv9Afij2535JhhocF7G/7qmVtCJ7+z0nZGO+cv1cjQwj++W9tGQOpGilknmk/I8o0x1JaogRYBpFFKyGKAXY1nxl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046943; c=relaxed/simple;
	bh=P2lG7GO9IGi1SwqRSyva4ldX3IQGXuWcHGBLBa7L8LU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=du2LgDznM7CvUsBc/gXz6uX7UVi2vqf4bY0OP5JJzkR//zKmG3EdrYH7HyFXOyjk1rxIoBjPiRCRVZYBZhYLn5GN5Y3Hce3dOczgN63RLzgJRaqwRWKj6Zb6WdtyHwsLP07QiEmmJZmfyK81OFmW275oaLUblMbwVSyehcnnO0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=uum7gXQt; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046919;
	bh=gIGOK/FBDAkgWPdxmt+ho2957yRrfInNHmXwhIk3AUc=;
	h=Date:From:To:Cc:Subject;
	b=uum7gXQtZCWA/oyaclJA/RaU6cVzW+5ycCCrycsJg78whtUVzZRMuGVyeGwZaivr7
	 3pN8D1tRXoODjYVNT2c+POG+McDeT6K1vTrR9AL9rLvpxj6J46yAYyo9RBqEgcQ0nh
	 L0O/Euk7KKrem2XbqeZ0EgzqiqU9fCneFexQcAjiP8ui7LVpWJtqOkTgINIUuXgT4t
	 yF3626TlOMqyUbwS6GHiYAHENsg0gKKduiP8FBD8DiQp+lYx9z4MUFFQOJv0E5loK8
	 dNUIurO4rC3HtKrV4wSX35H3VFa45a8J7lP5Q3GB01bUyOyle3Qhsg5xpiR8r9clpu
	 jGZLJ1Qe0p7Cw==
Original-Subject: Issue in man page fread.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216F1.0000000068AB2647.001390B8; Sun, 24 Aug 2025 14:48:39 +0000
Date: Sun, 24 Aug 2025 14:48:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fread.3
Message-ID: <aKsmRxagM1G4fJff@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t size, size_t n → B<…size_t> I<size>, B<size_t> I<n>

"B<size_t fread(>size_t size, size_t n;\n"
"B<             void >I<ptr>B<[restrict >I<size>B< * >I<n>B<],>\n"
"B<             size_t >I<size>B<, size_t >I<n>B<,>\n"
"B<             FILE *restrict >I<stream>B<);>\n"
"B<size_t fwrite(>size_t size, size_t n;\n"
"B<             const void >I<ptr>B<[restrict >I<size>B< * >I<n>B<],>\n"
"B<             size_t >I<size>B<, size_t >I<n>B<,>\n"
"B<             FILE *restrict >I<stream>B<);>\n"

