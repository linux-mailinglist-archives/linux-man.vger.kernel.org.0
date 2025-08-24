Return-Path: <linux-man+bounces-3635-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 410E5B330CF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F162C441F04
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88EA52DFA5B;
	Sun, 24 Aug 2025 14:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="i5odV6JX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010BF2DF71E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046960; cv=none; b=jPZtdybqH033vTOFWkVXAzRNesEZUJoKmQbuCuwf7p0iElj2l2qQoQsCHV9elBsDkaiR7qRtSOc2aSKqDRW640BLgduyFGnll4dzO5ntv1L7eovda56ws9APRq4RUpHIRs//1dhI3NODPvF+oOq6G+2vDmdVdo90G1g7fREIVUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046960; c=relaxed/simple;
	bh=h1jotFet00JrksA0jW099NeBj8JVbWez6ZS+RFOB+QA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=K0J3yt/Nb7NmFfgaYJ0EsLqr8ddwLrj2FkpqQP1MK0/YnUXhgU3etFwET9LA6VQ8D0PEHzN4DAWGQjwoY5i755uaBGXaWk7hBc5rk1Z38dELOXdcJW0+oQyAVs9xkYktCrNOBP6Mgj7pzeE1Bmc7haPelayKwGwopV8Fy05fyGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=i5odV6JX; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046923;
	bh=rNkJt63HNRzOam/tpD/sthtv47z9470LmreL1EbJVNE=;
	h=Date:From:To:Cc:Subject;
	b=i5odV6JXSIN9qHy1WsiYi96kMCI3ntqKOhHK9CT5b8o/VZ7t4aYzCJ0Hsp7ldy/PQ
	 XlhVfOgsaAMon32vc5RGBbzDbviHdfMfRhn9yuW6o1/fnhHy/FkI3vkqhNwQlS0+1H
	 o90ntNau1T7zMgxiNlBXk7XCiFBmEnt22tVhnsyHKpOmEKXmqCK9HK3cl3nzp4P7hn
	 KcveAUzxUTsT0SDbYR2CzKJMgPmC2xIs0bLBZwLsSru9nVxAgI1A0CM63QlZDqeej1
	 Amhvs2vinOx81KbVOeVa1yJxE7G7fK4w1eG/T4TU33KApsAjvwit8yT2b6eyKZPmNY
	 Adnjc3Iye4xsQ==
Original-Subject: Issue in man page memccpy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021738.0000000068AB264B.0013940C; Sun, 24 Aug 2025 14:48:43 +0000
Date: Sun, 24 Aug 2025 14:48:43 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page memccpy.3
Message-ID: <aKsmS8T0DWWuIQzV@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<void *memccpy(>size_t n;\n"
"B<              void >I<dest>B<[restrict >I<n>B<], const void >I<src>B<[restrict >I<n>B<],>\n"
"B<              int >I<c>B<, size_t >I<n>B<);>\n"

