Return-Path: <linux-man+bounces-2218-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9824CA0BDD3
	for <lists+linux-man@lfdr.de>; Mon, 13 Jan 2025 17:41:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94F1C3A971E
	for <lists+linux-man@lfdr.de>; Mon, 13 Jan 2025 16:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A789920AF80;
	Mon, 13 Jan 2025 16:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=stoeckmann.org header.i=tobias@stoeckmann.org header.b="S/cCtqtz"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81F613777E
	for <linux-man@vger.kernel.org>; Mon, 13 Jan 2025 16:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736786457; cv=none; b=RwItmQvkuzQUvNJafgXNKNvgvIfHEJJq8ZDR3guCCIDkFNhhjFnAFomL/qN7LzTKS2oJaQAye75o3v/Jdjm3mC5qsMfyHuzV2+be3F3OXh7+ul8JsLplknG8LplFDpCnbdGHU7Du7pkAuvcliTP9nvIQdwVIZ9KN0UA6apXldCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736786457; c=relaxed/simple;
	bh=aw4EZ4xaaEDNq/dbcO0bvUB57CYVY3bOTlHxeQ9zicc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=qIT9oondX0Q4uG6TDIkEAs3dvmPjajOBY7hS1lTn02gLs7kLbqRya3JQFUw4JaMTOQCZA3O/wuRezTN1lIOLGZhkOx0nIhgkxolROarKm9RnhuAtk1UdC+wOJcv/uZTI/rJcv0ra2IpCaUm11x4qZ4IQrX3UgfIQQFOgWhVZkVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stoeckmann.org; spf=pass smtp.mailfrom=stoeckmann.org; dkim=pass (2048-bit key) header.d=stoeckmann.org header.i=tobias@stoeckmann.org header.b=S/cCtqtz; arc=none smtp.client-ip=212.227.17.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stoeckmann.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=stoeckmann.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stoeckmann.org;
	s=s1-ionos; t=1736786446; x=1737391246; i=tobias@stoeckmann.org;
	bh=JGpE82gJh6BuJjULtictW5M+q7YLQJBlRbRq1O3ypmY=;
	h=X-UI-Sender-Class:Date:From:To:Cc:Subject:Message-ID:
	 MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=S/cCtqtz1CHAVChsb5Ylb4FqLtdfakU2xb5fifSrVJRbUEsP3wzyP0pdxxWJZtvB
	 qVEFG6FtTi7TJ2IDseKgZwuKJZ1r+p5xjlsvSB0NhKfwABRixjxMh1cxLKTgMRFyZ
	 +93zsqRS5Zc7rstucttcUnrVTHdUuocU+dm/lv6s24LHEC47AGUpMKsdgb5NBCtjH
	 QdrjMZpxUGz5VfYhJFZYH2jlJewadidTE2tY7FY19P7aADDY0po2q1CHRghhM9Wn2
	 VYSHQsDVe8AMGn4yf1Agm6OmspuxXFRL588pLbXgoFXw0TZQLfhVNv7XUh0L4DDGf
	 wNVIKKGSVUAmLVG3Ew==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from localhost ([217.87.196.195]) by mrelayeu.kundenserver.de
 (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis) id
 1N0WLC-1tJAb33O6O-00sfhn; Mon, 13 Jan 2025 17:40:45 +0100
Date: Mon, 13 Jan 2025 17:40:43 +0100
From: Tobias Stoeckmann <tobias@stoeckmann.org>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2/fork.2: Add _exit to example
Message-ID: <tngwcffbrzbfkj6vrxgxpekrp3bzuftdy2mzow56xyfkrcna2w@nbgr2ourerxo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Provags-ID: V03:K1:ZgIcCmjHz/X27gLExjyU6U1dfLe4Zt9Fliv8DNjUEK+CpPJB3hI
 +mgeHDv1XIThtPKhgz1sV4MQ12roFcFJUQriElhtVWYos8wvHmreupalOvcBCZngoxz2dQ8
 KPmq3CdfkHh/cOcuYWB5rzA+dMwav6xUtEPh7Qkb+v1VZ8X0UP84GfK1kcCEXmtwgmnFdiX
 juiIiUMds9VP+6vWi+qfw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:tybPpok6yZo=;T1W3bh7MhFjqdbBSeJmLKafroAU
 Zi+E7btiVZY8+v+gTRXAzFa9CkVT5aGZudKVhR0A8W5p6+RKHnK4f89O9JxagdhdApO7YsVJs
 nXYhzx0OgPwbadTDT2WEQuCjmr6muoayAx2NRas0CHyTen50kKLBOFbvmmmYEocmLhOypn7xm
 kklel2ixjrYmuFglr/Sm7srYhSU4AUOzxMzXmrargIXYA63FMjtFFf9ONvhe3/2Gzd+D9df2V
 8G7JHk9l1YE0RPQXIwe5hZOuuyVnL3xNU4E4mN3JRq9ojoP2QWXubTOYhARjZjT620b6O5F7d
 FCiE1PjFdm3ZrnXh2pAJnDqhsq8nDgVa5iAfEf0FweknX1JyEqadn/W/cRSrXVMfnwCFh9QWJ
 Krd6IOp4TBlfeK4zvSBrwGUOHKkPETwpOIgIMdTJ1mMCmbZ01mag/9ua9In86aHPBsMme+wuD
 A9/VCJISRfzfA113OUREZMGR9MA/4XjrEXnmjZLjVpSV6AfoYrAAsSR5z9JRvAHOH9hsMDuK7
 nBJQD99vx3yLfPYpg8NTF3nlBAj935ZHvDUkE7Eu0+0ptuwYHxpJTJEjVKXtafpTmH6Onoy26
 2TWZAy+thgC3MPdfa8vn3e/J4ID7weTCrAdDoTnKmyD7eQEsPcOME47+DOQ9jHtIAnTdTAKXg
 l5MJ2AIt++9KEV+YikuzEjnsr8j9GMnuPMNt0v9ADGFyHkoIQ/P1IliMb8vIkZQJNeWAMs5C+
 k9pgksPnGQvmA/4h6vNn2MEY/bVsADMDuw8i0RGwUOAfFYPGitz2eErQlw7lt/LoKaEl/6UuF
 mJMdVnjBI9yyp7cp2NI8xzNHobDsGbCzQBQTJIGW15x6kR+NLvD/LGMsYlJEx+OAdNSV7XmGQ
 pAyOZgMoC6PKJcrLdEkmn5632B9D8z6wDveF9M3wSa8rrdPhKVEzIi1FfoVtUWKy4M4kFCOEm
 EjPdC8tAnaLgVnZHWO0x+fvthQcJdZCK9/W+L660PZt6DlGHh7W65HWAArmk4dk5J8CDFw9vR
 ua7Dz9cO3Y4swSwWQGp8l6P7qpHcGBLq89PbY90
Content-Transfer-Encoding: quoted-printable

The _exit function is a better choice for exiting a child in many
cases. Most prominently it avoids calls of functions registered with
atexit by the parent.

There are valid reasons to call exit and the example is actually one
of them: Flush FILE based output. Since atexit is never called, we
could just stay with exit.

Signed-off-by: Tobias Stoeckmann <tobias@stoeckmann.org>
=2D--
As discussed with alx@ on shadow project, this might still be of
interest to raise awareness of _exit's existence.
=2D--
 man/man2/fork.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/fork.2 b/man/man2/fork.2
index 601391277..b4f7ffde9 100644
=2D-- a/man/man2/fork.2
+++ b/man/man2/fork.2
@@ -326,7 +326,8 @@ main(void)
         exit(EXIT_FAILURE);
     case 0:
         puts("Child exiting.");
-        exit(EXIT_SUCCESS);
+	fflush(stdout);
+        _exit(EXIT_SUCCESS);
     default:
         printf("Child is PID %jd\[rs]n", (intmax_t) pid);
         puts("Parent exiting.");
@@ -339,6 +340,7 @@ main(void)
 .BR clone (2),
 .BR execve (2),
 .BR exit (2),
+.BR _exit (2),
 .BR setrlimit (2),
 .BR unshare (2),
 .BR vfork (2),
=2D-
2.48.0


