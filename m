Return-Path: <linux-man+bounces-3620-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8754EB330BF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2735B441ECC
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DEA12DE1F0;
	Sun, 24 Aug 2025 14:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="m/e2uzIm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2BD02DECB1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046953; cv=none; b=npbs3K8y7iJnB8p5UkAO1j1J9a3C+qT0Bn8tmgbjwOdwBV+0oHloigGGljfgB9YyZV3T5oy9mdVmHacQy1SPGXN7mGWEUrVlRnwjPqqAaBKIICXZxKib+rtOzyf/3qV2T9o/e0Isbm7PZ7Yiit25FhdMONNe+w8Oq1TtUkiqza0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046953; c=relaxed/simple;
	bh=V5Fot4bM0vcW7FCHoXjSOdEC7wITF1QI2l+Ic/7qIjU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=qmFEcTepJEt8zSJnqMYmlD69S+JGrK8eZR2hwT+tcHm+M4XySlthM5cHzMhOJYH164bTyxhogqrwxeG7macJaZ3BCYotEQKmoCyESCvFXB5HAM90yHYjmyaLLFdqJDO0Pbrjamuz3DFcFTWSCqlS9Ep7CW8osoa/QB9S0lGjIvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=m/e2uzIm; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046922;
	bh=S7oSULC4GFDFjSOujdoxH37BHptUPT7Kk5E2loZQ2f8=;
	h=Date:From:To:Cc:Subject;
	b=m/e2uzImQzHSRNMMniulnpKp3WjiqfHQYrjBogf8jeaL8Zat8ik++b9TO+R1Sfr7k
	 UyC6u26WmBBKfkNYmhN2McNO8bpraKBADC1G8N9bSzoyy1IYMzlIMLlycUFL9KN4kn
	 7hnbRN3jswrfJ85UrmouVDpMNg0PgQAJfCD3bO7+aNjp+UHkdxz64w009o5kTke0Gv
	 oORz1NlL6ZDvUUCOgbh+zUqj9vCbnjhw0PqlWGm+rUU33ORGiVzKK+NXylQhasOZJh
	 eqlgCJYELhSMS7DB9xv6ZjNQtyDepM89iFOCogDlCHho1p3iazkaSZ5doKNjJ6YFHH
	 5wKWk/x0TG1AA==
Original-Subject: Issue in man page gnu_get_libc_version.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002171E.0000000068AB264A.00139293; Sun, 24 Aug 2025 14:48:42 +0000
Date: Sun, 24 Aug 2025 14:48:42 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page gnu_get_libc_version.3
Message-ID: <aKsmSqu8Ty29qLuk@meinfjell.helgefjelltest.de>
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

Issue:    indicates → indicating

"The function B<gnu_get_libc_release>()  returns a string indicates the "
"release status of the glibc version available on the system.  This will be a "
"string such as I<stable>."

