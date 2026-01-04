Return-Path: <linux-man+bounces-4609-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 430A7CF1628
	for <lists+linux-man@lfdr.de>; Sun, 04 Jan 2026 22:50:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE4CA3010CC1
	for <lists+linux-man@lfdr.de>; Sun,  4 Jan 2026 21:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E27AE31A542;
	Sun,  4 Jan 2026 21:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="M4XQicL7"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90192749E6
	for <linux-man@vger.kernel.org>; Sun,  4 Jan 2026 21:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767563414; cv=none; b=MSaantNge/mu7lkdLZlSNnEWv4PG5d//SPhU2AMchBryD+N4JViTaFfICqiBh6LeEuPZ3xtdLQxgfz57n+rvIGvoJjihzwGcn6xcmuBfUGZTLZih4YrejYkDXU199q+YzKHRewws3c9TFv30f4h5Zx1IW4zDyxnpgVKo7ZQ+9As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767563414; c=relaxed/simple;
	bh=fbcGVepb5Woqj/sGiehXkZSoGv5dE3UO54VedK6lVYA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OOvCuEvcN/NwnTLCr6kEO1UcUY2kPP2qHVh5ZpaJFOcXgy1v9iAdvn1N30Y+NywP94bcAv+DexgcFyU43qGlE9IGU5uC9P7W/FWhqKWH8TfC0NIK8ppYXJQ9b0XgOaCbdjC5A3CIAaFlRnubqcimo2kCReRuRuy+sIomgako/Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=M4XQicL7; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=LbcBiFy44kU6aCab9kuxb9dnNuejFIyu+tZ3DIW20xI=; b=M4XQicL72AhawMuO
	kb3l3kkQQ6Qzi4IxCUDXB+jd8Tk63fB7e8KqNQPRzi9NlUnRoWxcc70MoWcnlH79Fd7KbKFe/7XMH
	4CqT+kad65jqiR0rV9oZT/Zva23muwLDL7ZSeLjZJ7IRSBz1Pe3tci65VNUih4ruiD9LnZdM2+4GO
	jlThWbdLfHhxVG5JvBj/iTQLCGmQ3gEZ+3aE4P3qAOb0Wf0PudXkH/ir9hRUVUXUWtC/6QWGdmuTs
	EyBP1M8DuITAE9WONtWiQfKvLwq2eCNQ76CjmDeSod507cVfcmY38pYkU3Ri1tIy0qFTM8m9SIoF1
	4cC7fKajD2dvHRisng==;
Received: from localhost ([127.0.0.1] helo=dalek)
	by mx.treblig.org with esmtp (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vcVzA-0000000CJgv-1k5Y;
	Sun, 04 Jan 2026 21:50:04 +0000
From: dg@treblig.org
To: alx@kernel.org,
	linux-man@vger.kernel.org
Cc: "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH] man/man5/gai.conf: Fix RFC reference
Date: Sun,  4 Jan 2026 21:49:56 +0000
Message-ID: <20260104214956.258199-1-dg@treblig.org>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. David Alan Gilbert" <dave@treblig.org>

Most of the RFC references correctly reference 3484, but the entry
in scopev4 points to 3438 instead.  It references section 3.2,
which 3438 doesn't have, but 3484 does have and talks about IPv4
addresses so looks right.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
 man/man5/gai.conf.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
index d80c23311..4aff0b0b9 100644
--- a/man/man5/gai.conf.5
+++ b/man/man5/gai.conf.5
@@ -61,7 +61,7 @@ .SH DESCRIPTION
 .TP
 .BI scopev4\~ mask\~value
 Add another rule to the RFC\ 3484 scope table for IPv4 address.
-By default, the scope IDs described in section 3.2 in RFC\ 3438 are used.
+By default, the scope IDs described in section 3.2 in RFC\ 3484 are used.
 Changing these defaults should hardly ever be necessary.
 .SH FILES
 .I /etc/gai.conf
-- 
2.52.0


