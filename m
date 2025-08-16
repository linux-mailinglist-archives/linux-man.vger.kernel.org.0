Return-Path: <linux-man+bounces-3454-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB6EB29094
	for <lists+linux-man@lfdr.de>; Sat, 16 Aug 2025 22:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3ADE47AF276
	for <lists+linux-man@lfdr.de>; Sat, 16 Aug 2025 20:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97C0E1E1E00;
	Sat, 16 Aug 2025 20:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="hcdbyR1f"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F561DE4CA
	for <linux-man@vger.kernel.org>; Sat, 16 Aug 2025 20:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755376984; cv=none; b=pad/7FMAqeWTziY4RjMa01w0Uh3RMM86umrGcj9VqFwCSLMj1CetSVXXb+zYFL/92zxXWCB+tfBEY76Opfocs1kZ7DypYBF6e+Qb8gJeOu/Wj0vwFSlGSeEXgS5FdUJl7nF/60/B23QLQj69+9sOldR/g7OnGIRTtLxIXojU0qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755376984; c=relaxed/simple;
	bh=/A54Q1JVqVk/poRE4Q8AGp31U1Ao89rw8gaKtG+4Z14=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rrcYOge1ej6H2Wlb9ExMGYJOxfu9iCLqAoZaRwZp9KTBGfBWC17RUKut+5EgGZAz2FnT3XJl3jmTUlSYgCTK6NPEJGqTYc8PEKmjb1/Sx8I2iqkPBHAghRpJ+WL5el196wq5zKXt+JOvz09Y5d0ax5tJxC6maLQ6LKoVp2ogGEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=hcdbyR1f; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=p1+TmNo19Pqimx7zkp2wpV2fpoNTTdV7lRyF5GXH/lY=; b=hcdbyR1ffyxygoXy
	ldshE3Zct0PPT9L3HOUyTw0RY3LsmwkS8S9Wi4AFOr89wqlfS1Em2Yo2STdOew7Ir02huzJbQXyhN
	53kRs5ndMmSRzCmBUYZThIpyNVKzb7zhLmqOJcNHlzvq6L2CLLYGQRjN+G9EURPyCMYlkr68Dy050
	AQt9Hz5CzqEoA0RP0dVSEEySOv8+ryW4ymc0kwIrqVb7twjAmLF2w9X0gja2bpawK+LvE7UXpLywY
	sRN1omkLwKfYWmb3iaBp5w5Aho+tz7STJIVwIn22r3JgMt1teqIABnfVi/RkHKW5UMjD29YBoQhXS
	kfL/YziqcSdguuh3Kg==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
	by mx.treblig.org with esmtp (Exim 4.96)
	(envelope-from <dave@treblig.org>)
	id 1unNjv-004Nx8-2u;
	Sat, 16 Aug 2025 20:42:59 +0000
From: dave@treblig.org
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	"Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH] man/man3/mallinfo.3: Reduce MAX_ALLOCS
Date: Sat, 16 Aug 2025 21:42:52 +0100
Message-ID: <20250816204252.63616-1-dave@treblig.org>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. David Alan Gilbert" <dave@treblig.org>

The current mallinfo2 example segfaults on 64bit Linux.
This happens because it builds a large 'alloc' array
on the stack, which is currently 2M entries, each of which
is a pointer, so hitting 16MB which is more than the default
Linux stack ulimit of 8MiB.

Reduce it.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
 man/man3/mallinfo.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/mallinfo.3 b/man/man3/mallinfo.3
index 5e722e38e..0e1deb748 100644
--- a/man/man3/mallinfo.3
+++ b/man/man3/mallinfo.3
@@ -282,7 +282,7 @@ .SS Program source
 int
 main(int argc, char *argv[])
 {
-#define MAX_ALLOCS 2000000
+#define MAX_ALLOCS 500000
     char *alloc[MAX_ALLOCS];
     size_t blockSize, numBlocks, freeBegin, freeEnd, freeStep;
 \&
-- 
2.50.1


