Return-Path: <linux-man+bounces-3959-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB32B9AA1C
	for <lists+linux-man@lfdr.de>; Wed, 24 Sep 2025 17:28:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4A65168ED5
	for <lists+linux-man@lfdr.de>; Wed, 24 Sep 2025 15:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF0B307AFA;
	Wed, 24 Sep 2025 15:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="UBZz+64i"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f201.google.com (mail-qk1-f201.google.com [209.85.222.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B517230F7F2
	for <linux-man@vger.kernel.org>; Wed, 24 Sep 2025 15:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758727431; cv=none; b=XN+a/DKx4QlPdBeYFDT4XyLjRHYDrshh14QDdWw8WtATnimtHitTd3yyZ/NFFgX8GGAITf+MDNpk2lrrsnCWoIfAPZJOeyMFMR19X6xxsuOaEI/h8h6GvSMChgaUpADr6X7VBuPfsJgeR8xs21Ozxel8wzOnuGu601piaQYhoP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758727431; c=relaxed/simple;
	bh=UvNeYPJHWEAkjsKKzsy75hP8GR1E5R1zV3Ju/HG5j58=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=GGZpY2fMwjOc070iFKUXDI9B7QOoY0TJA0U+wsJayLLC2Cx6CnylnuuUDMzQdLMEe/jEynz/nmizwsW1dusqLNbvxA8uEYJal33fjQeQJO/dKtQwddqw6Fiau22+ZVvs86V5CwO7e0l9duURJOirkVUIh2uqT79LlFF/eg7t//s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--jrreinhart.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=UBZz+64i; arc=none smtp.client-ip=209.85.222.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--jrreinhart.bounces.google.com
Received: by mail-qk1-f201.google.com with SMTP id af79cd13be357-854bec86266so478073685a.1
        for <linux-man@vger.kernel.org>; Wed, 24 Sep 2025 08:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1758727428; x=1759332228; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D7BpqCi15HeQmH5JI9xvGlO7j0BIOL4JJPKcRYGI8WE=;
        b=UBZz+64ijj+3meorFnunSlW9KDJGDDTsxFwVKrxhcti5MdL5OEXowpDsv1ABp3lW5Q
         /P65HHn8U9ptuIDPweZYcggfmWAcuAfBMC834TBAR5agFPfyY1sABnPoOIMRjJHA4VfQ
         RuVzVIzhL+sLKIvWH20lWdhAoXqCvnmyzmWWVjFqM2Tn/fe8/2PAJ6+kUllLwm1vUakK
         NqXXg760kSZnb9EywFzTe+tgnD6RzXtG7/VfmQGKciNiaz03tN0AhEvNYSHeUwmG1Cyj
         u8VuWpksFB0TlGTXBYFI2G53ByAIza5I3VQMzZZTFiApV87tO+mauejTxk4cmKoFmOMH
         qVFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758727428; x=1759332228;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D7BpqCi15HeQmH5JI9xvGlO7j0BIOL4JJPKcRYGI8WE=;
        b=pnjmZKCRyxKhUmVnV8O2wz4ZlQ2sZkgepI5HtchziA5sJ2GO+y7Bk8Un3uwJELb2Ni
         j8besvjcrblwqba6FRcWJD5KuSJPYRE6gwJvqkRLXclUxkwNJE1aZNqLJ2wM1pm+Wdna
         otuhzkW5wGiKas5B8XUuLfGHF+F2hBBt7MMPq/E6cSmrBhU4GL7BcOSfmKomQDfWZ1jV
         KoZuf4bQd+ZXemKZc66ieCYriRhv88D77QZYMi9TKLORaAccQ7X3teQWqI/jEYxR8mLP
         IaVrTkEPsq9UXNeCitQ641evzSxaX2JjKbWXVb9Jn2zdKnCSP9Ut9m+nt7Cddg6HTnzs
         tMJw==
X-Gm-Message-State: AOJu0Yy7pw7Q5mL55Jm/gwKeyNo4h75Rg86DVexs0bf7Wb0BDSR5cnET
	axvz/5xz6ihCcOGlk/0frTUYwWBM1OXpgs5oqts7uQiYJ9IjErColiunQ+RzCv2efP+rfizZZ6c
	u54WSKoJTvWHVbPt0cShTIjKBOZ8roIby6UGCuWwK+hW6//wVRNEhhSG74y5MxdJ9ZN3SFM60vh
	60ldXDm2bpRzsTmasTn/vFe59o8BFPH7BEPLjH+11UKWK1NGYLG7U+pPImYUFmOA==
X-Google-Smtp-Source: AGHT+IG7lNqcxKDGVaZbXm0YreV4bt0lHIwLDjhAmBLXM1aYeuFlrtiyaMsNwMP2acB3pkrCdCDFH1fzNIj6W8a4
X-Received: from qkee26.prod.google.com ([2002:a05:620a:4e5a:b0:857:470a:aca])
 (user=jrreinhart job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:620a:172b:b0:857:d63f:bef9 with SMTP id af79cd13be357-857d63fc21cmr261763785a.55.1758727428293;
 Wed, 24 Sep 2025 08:23:48 -0700 (PDT)
Date: Wed, 24 Sep 2025 15:23:13 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.51.0.534.gc79095c0ca-goog
Message-ID: <20250924152313.1902586-1-jrreinhart@google.com>
Subject: [PATCH] capabilities.7: Expand CAP_SYS_PTRACE to include /proc
From: Jonathon Reinhart <jrreinhart@google.com>
To: linux-man@vger.kernel.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, Rishi Sikka <rishisikka@google.com>, 
	Jonathon Reinhart <jrreinhart@google.com>
Content-Type: text/plain; charset="UTF-8"

CAP_SYS_PTRACE is required (via ptrace_may_access) for accessing various
things in /proc, so include it in the CAP_SYS_PTRACE bullet list.

Also, add a hint that other things throughout the kernel may check this
via ptrace_may_access().

Signed-off-by: Jonathon Reinhart <jrreinhart@google.com>
---
 man/man7/capabilities.7 | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/man/man7/capabilities.7 b/man/man7/capabilities.7
index f8b389f1e..f9b9bee23 100644
--- a/man/man7/capabilities.7
+++ b/man/man7/capabilities.7
@@ -625,6 +625,15 @@ Use
 Trace arbitrary processes using
 .BR ptrace (2);
 .IP \[bu]
+inspect sensitive information of other processes via
+.IR /proc
+(e.g., reading
+.IR /proc/ pid /maps ,
+.IR /proc/ pid /mem ,
+or reading symbolic links
+.IR /proc/ pid /exe ,
+.IR /proc/ pid /fd/* );
+.IP \[bu]
 apply
 .BR get_robust_list (2)
 to arbitrary processes;
@@ -635,7 +644,12 @@ and
 .BR process_vm_writev (2);
 .IP \[bu]
 inspect processes using
-.BR kcmp (2).
+.BR kcmp (2);
+.IP \[bu]
+perform other privileged process-inspection and debugging operations.
+(See uses of the
+.IR ptrace_may_access()
+kernel function.)
 .RE
 .PD
 .TP
-- 
2.51.0.534.gc79095c0ca-goog


