Return-Path: <linux-man+bounces-439-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2DF852776
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 03:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A569B2814F6
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 02:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CFF917CE;
	Tue, 13 Feb 2024 02:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="QG+HoTfj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EFF15CC
	for <linux-man@vger.kernel.org>; Tue, 13 Feb 2024 02:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707790766; cv=none; b=TxJ1945MmHPzE+eegpFOQeBvEixyyKNVnSDiDbWeogfF0Pi4Co5nnrVjss+QiJUfC/WXf3HEpIcW2L0ePbM6S6FO70Q/1R5tBizG/RZJ3CNKlq7f9jQ9X2FjC3Ok70uH+YdoNItKyrRidQvmDJyB0vO+HE15WFcLYAKs7iWP9qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707790766; c=relaxed/simple;
	bh=2DuSt9+rHgKpXypq4rVuIX4F8weGSAbU9Y+2gGepjOY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ST92aZgMM1oA96xDXVeFVkb9Fc8omWLUD64pItjRFhtrrw5f+Yr7gRF15EDmK/UZJOuPa8dZkJ8aEgqg3q4t5PU/0ZvvH57brhIN6w3NySWMdXHq7ZAL7DWMmkEVH/Li7/3VyXh9tptBrxUfJPBeLPD7B4rF8ZsdQEPJsJvRhTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=QG+HoTfj; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-607754a6298so8717107b3.0
        for <linux-man@vger.kernel.org>; Mon, 12 Feb 2024 18:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1707790762; x=1708395562; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9CZ7QshQHq/c3XSmprZtJc/gLa2ttQilknxfz/pRGJM=;
        b=QG+HoTfjeLYFpM+xfj08lV3ZPGoGGBnum4auOihEyWn0hWP9l1MVCV4Fs23sLrlQVJ
         BY1+nVyycVBghJfPsl0o492GIc1+pCYH/bKtCBm1vYRTLF6I2guF2lRlSNijDg8Je01o
         Ud+QRfIY9MGstjhvISOpKmYjixdPvvtWaFEoAHHCVd6qfYq9lEJkfUj0pWC1s5RYRiaz
         FscETSocGTg4Ia9rU7uYwfqCEG19PF5cE51WR0MOC0q7QXi5x7xPe0v0QgmtXVemwVqg
         Gh01or3Cjk89VNVTlUsy6lek4JKj5ClauZMQmt/o04hTuMSvrawbQcd0N5adWpTcv3U1
         0Aeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707790762; x=1708395562;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9CZ7QshQHq/c3XSmprZtJc/gLa2ttQilknxfz/pRGJM=;
        b=MSCYTOYg8JmYABGRgoJNaIMnXKkzv3YZaJMn4rtFAfbi5qgpcJ6X5fAq3BykaKDfxS
         /0gYqVJ9gV6GuBp8STnQrIsMKWjGt3w45+BTyHH4dS182kdo4E3Xkthl9Qv8l5ful10G
         mAG/mpJlkVhw/XdCcXdLORYVNkP2p98Ek12N/JLby4mwpaitUDjYsf1A3EWPOBuUZH3q
         36dx8qQ5bYpnplPsb5rIOvyoOnv8Z0YXXc7JmurjYCEuN2a3mEye7pXYz5xZmMCyBocq
         /aG2bipLw6SokDgTI5H8m6tg8e1Y9SEjiyZI5cN36R3sXQqYB3vLbMGf8trgj9ZOEilY
         aSoA==
X-Gm-Message-State: AOJu0YxTaCxe5hToQJUAJSwbhNNL+XHkXrmzcABlGCaGzneo6olGLAOQ
	smbPFK+TF88RUtNlMVKtiXP+u52eWw3HhTgYZp6az578WY9FzuEh9VePvMyjDaDk0QkcEZw6RVW
	iJEc=
X-Google-Smtp-Source: AGHT+IFCKFseNwaNnF/1nMmQ8T7w1sntxCPLoK1P5qymVUblDRid3Qw3yGkcod8hlPZTYJbEdwd4vA==
X-Received: by 2002:a81:8302:0:b0:607:7f86:9236 with SMTP id t2-20020a818302000000b006077f869236mr1204124ywf.30.1707790762486;
        Mon, 12 Feb 2024 18:19:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXWdbtSQoWaFJPYHk77sohYPUV5Ymb+RU8YdvQ2kVesiRmSGhQSGYPE1+X5iU3UK/6yDYn+J5viCegrjWL7TpDdPP4SWKh3yotoZauCfCSh/+VFX3niSTv7Gn2FzsxGbQ==
Received: from [127.0.1.1] ([50.146.0.2])
        by smtp.gmail.com with ESMTPSA id f126-20020a0dc384000000b006041f5a308esm1473889ywd.133.2024.02.12.18.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 18:19:22 -0800 (PST)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 12 Feb 2024 21:19:21 -0500
Subject: [PATCH v2] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240212-fencei_prctl-v2-1-32d940981b05@rivosinc.com>
X-B4-Tracking: v=1; b=H4sIAKjRymUC/3XMywrCMBCF4VcpszaSG4qufA8pEicTO6BJSUpQS
 t7d2L3L/8D5ViiUmQqchxUyVS6cYg+9GwAnFx8k2PcGLbWVSlsRKCLxbc64PAVq650+WGOOJ+i
 XOVPg98Zdx94TlyXlz6ZX9Vv/QFUJJeTdexeQgjHqkrmmwhH3mF4wtta+8eSWpKsAAAA=
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1707790762; l=3465;
 i=charlie@rivosinc.com; s=20240124; h=from:subject:message-id;
 bh=2DuSt9+rHgKpXypq4rVuIX4F8weGSAbU9Y+2gGepjOY=;
 b=Mggvx/mYHmreD9npWCH565PMHzt5GndGCjxTSFirm7Ub9KrrGfLGDzxWhxv9C7WJAiTPcyYAu
 +3Ic12BQ+fxCsDw/7V3tYpqPgNKP0eUgTwLPBpIDDJuWhyBpGyyvuIE
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=eVndo3OHViAjwuqHqbJB4ZtzJzzvk/r6fUf84tZ3rw4=

I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX flag
for prctl(2) to LKML. It has been reviewed and is expected to land
during the Linux version 6.9 merge window. This adds the relevant
documentation from that patch.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX
flag for prctl(2) to LKML. It has been reviewed and is expected to land
during the Linux version 6.9 merge window.
---
Changes in v2:
- Update formatting (Alejandro)
- Link to v1: https://lore.kernel.org/r/20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com
---
 man2/prctl.2 | 59 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index f1604a7cb..32ce8474f 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1147,6 +1147,65 @@ For further information, see the kernel source file
 (or
 .I Documentation/security/Yama.txt
 before Linux 4.13).
+.\" prctl PR_RISCV_SET_ICACHE_FLUSH_CTX
+.TP
+.BR PR_RISCV_SET_ICACHE_FLUSH_CTX " (since Linux 6.9, RISC-V only)"
+Enable/disable icache flushing instructions in userspace.
+The context and the scope can be provided using
+.I arg2
+and
+.I arg3
+respectively.
+When scope is set to
+.B PR_RISCV_SCOPE_PER_PROCESS
+all threads in the process are permitted to emit icache flushing instructions.
+Whenever any thread in the process is migrated, the corresponding hart's
+icache will be guaranteed to be consistent with instruction storage.
+This does not enforce any guarantees outside of migration.
+If a thread modifies an instruction that another thread may attempt to
+execute, the other thread must still emit an icache flushing instruction
+before attempting to execute the potentially modified instruction.
+This must be performed by the user-space program.
+.IP
+In per-thread context (eg. scope is set to
+.BR PR_RISCV_SCOPE_PER_THREAD )
+only the thread calling this function is permitted to emit icache flushing
+instructions.
+When the thread is migrated, the corresponding hart's icache will be
+guaranteed to be consistent with instruction storage.
+.IP
+On kernels configured without SMP, this function is a nop as migrations across
+harts will not occur.
+.IP
+The following values for
+.I arg2
+can be specified:
+.RS
+.TP
+.BR PR_RISCV_CTX_SW_FENCEI_ON " (since Linux 6.9)"
+Allow fence.i in user space.
+.TP
+.BR PR_RISCV_CTX_SW_FENCEI_OFF " (since Linux 6.9)"
+Disallow fence.i in user space.
+All threads in a process will be affected when scope is set to
+.BR PR_RISCV_SCOPE_PER_PROCESS .
+Therefore, caution must be taken; use this flag only when you can guarantee
+that no thread in the process will emit fence.i from this point onward.
+.RE
+.IP
+The following values for
+.I arg3
+can be specified:
+.RS
+.TP
+.BR PR_RISCV_SCOPE_PER_PROCESS " (since Linux 6.9)"
+Ensure the icache of any thread in this process is coherent with instruction
+storage upon migration.
+.TP
+.BR PR_RISCV_SCOPE_PER_THREAD " (since Linux 6.9)"
+Ensure the icache of the current thread is coherent with instruction storage
+upon migration.
+.RE
 .\" prctl PR_SET_SECCOMP
 .TP
 .BR PR_SET_SECCOMP " (since Linux 2.6.23)"

---
base-commit: a81e893f2b9316869e6098c3a079c30a48158092
change-id: 20240124-fencei_prctl-c24da2643379

Best regards,
-- 
Charlie Jenkins <charlie@rivosinc.com>


