Return-Path: <linux-man+bounces-2330-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C047DA24E77
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 14:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38C86163D8A
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 13:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA1A1F540D;
	Sun,  2 Feb 2025 13:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="HTx5Oejq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B0CC8DF
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 13:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738504776; cv=none; b=QyHS6vI29hfuv3fHVT+Pg4KIC4uOnMqo+SF538u4Z8b4/EsWVo/LR+xY18JuZptFNQVdTbNP/b0jGSRx75H6lBn/SCQ6QZ97HyWtDXcLy0mw6K1D5aziLMTBycK5Utgk+qqTCpkyxa9fNIaANrjFKosqgG3pkBuKTA2x75s6yAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738504776; c=relaxed/simple;
	bh=05ViqDWvuaDOkrtSWAbFhSIeNEMuK6K8MRDua9mz6Y4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MXd2jo4ICzCng8OTxfXXkY3qUnhIFOUUBanS4K+Rch5MxJ+g1whXjM+MQ8blFevtHwDObDh4FRAfV/N6dKY0GcsU39bXQd1u+LCU1Hvzouz2xqvWvr87V2705oqreE819aUrDPBWDI7jPONTnlirw1mUV6UGH34t0kIc/5BJYDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=HTx5Oejq; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1738504668;
	bh=xOwuPWVDGiLYDlhVCyKmuNlqSykIPBOrMUFwKKrsZpQ=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=HTx5OejqmmBVXpd4Q6XCImG/rc/27+MAChAqshprgXTSl3O3VXgXGv8+HU1SWRxN7
	 2Rf3abOwA7WXVg9s1qt/FkGBdVxa9YV1M3+kfn+OhaZxDy5i9ZnAtXX0FJ0glBdv0L
	 6G9oVeR8dUSeQsha6BFwAVYoRDgrzuWN+++LcbcE=
X-QQ-mid: bizesmtpsz14t1738504663teejqx
X-QQ-Originating-IP: YJBhhdPTUbg5frVwUZ0x8VV7r0wa8T1slUpUvXmJxMk=
Received: from localhost.localdomain ( [220.250.46.165])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 02 Feb 2025 21:57:42 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 7263818905182605552
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Chen Linxuan <chenlinxuan@uniontech.com>,
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: [PATCH v3] man/man2/mkdir.2: Add EOVERFLOW
Date: Sun,  2 Feb 2025 21:57:33 +0800
Message-ID: <F22A2B1500170B63+20250202135733.11800-1-chenlinxuan@uniontech.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: NXAwOXNh0CeGTcsg2ncOHdwuqFsoMySdokSA9EN+yI+k0hQb3IOxEKDW
	hAue8oi2EvyzJAORHZROde13hwP49+R/BRTdH1qqqWWrojwgF7q5Ss+yO3/UoKxWMoDklK8
	xvTy6iwNm8dyUk4SwN0bO6A/dcew/YoC39qri6COubIBJULHE7Byp9c17OqiZN4ctaBPJhN
	unJwUb+fvy+Xgrn4dXJmHndvhfYDqd4Js4/5JkyqmVgYC19YuuSyLWuMgIjetGtLxKRdtbQ
	QBO60R+1scDPm5pX1ASzZudnqncvgToG2IyZi0z6yGI4VChTvORQs9tC07Fs+ivtb3z97cN
	ob9dLrSFmY3MDPTKHaWfRr0uv6Mgyzmp94LtOl+Pr0wHtxafya8gG9O8Molb6DMqAXGNm1e
	Dp2gf0UBVLzgGSfuCqCAwNkM9iGAntvV3inQ/MizCwra7w0fW2P7uOVHNCKXhR5FGwyDzMC
	7wbiqZrnH4sG6SyqpC3i/FCPw7xOCDUo2O8mpeumb1SMVpNMim5oh6e9nShR/8SRfRsL8gs
	M4nftyYOPiJPD76smDKGQ1I2vQdlJacMDGXbJdK8zYrBRJVkbFSHF4Q61qQ1HVJd6WVJIak
	IXynCzSRUZqnhHUTHGDQjPM0Q6cPcj0LcuyhdFMag8vRmsi3OypxBm1T/EY1+d/GSiKuEXr
	p8gMMyyCjY2edf+unNlqkVCoeEC6P8d9cLyrOJefWQiSJkUSz9OAd0AjlRXOxb4nHLDFpUw
	4UlpaVo+ybp8qnhdJXEcSKQd4AV8mWMzNruNT+bOpgbcf+evi0KmclWY/OZK1T6n5V5vhi5
	Pqy9W33ExMkt1xEv5xJ/43oAuea7yyRCzaSIi5owhxtQZSDb75RKfwBqB0jD5G621b67rxe
	ChihVeqASGeiXEJqqc6wRf7QHJbJCrur7KaKqBumTqnI2BpwT+FTLPOZY4c0ClJPKT15NJc
	ieGfDe09n7NrHSsG7AJV14Akui/XWnTOmj/0=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

`mkdir` and `mkdirat` might set errno to EOVERFLOW when UID or GID
mapping has not been configured. See
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=036d523641c66bef713042894a17f4335f199e49

This is a small program in the commit message that shows this behavior:

        #define _GNU_SOURCE

        #include <err.h>
        #include <sched.h>
        #include <stdlib.h>
        #include <sys/mman.h>
        #include <sys/mount.h>
        #include <sys/stat.h>
        #include <sys/wait.h>
        #include <unistd.h>

        static int childFunc(void *_)
        {
                if (mount("tmpfs", "/tmp", "tmpfs", 0, NULL)) {
                        err(EXIT_FAILURE, "mount");
                }
                if (mkdir("/tmp/test", 0755) == -1) {
                        err(EXIT_FAILURE, "mkdir");
                }
                return 0;
        }

        #define STACK_SIZE (1024 * 1024)

        int main(int argc, char *argv[])
        {
                char *stack; /* Start of stack buffer */
                char *stackTop; /* End of stack buffer */
                pid_t pid;

                stack = mmap(NULL, STACK_SIZE, PROT_READ | PROT_WRITE,
                             MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK,
                             -1, 0);
                if (stack == MAP_FAILED)
                        err(EXIT_FAILURE, "mmap");

                stackTop = stack + STACK_SIZE;

                pid = clone(childFunc, stackTop, CLONE_NEWUSER |
                            CLONE_NEWNS | SIGCHLD, NULL);
                if (munmap(stack, STACK_SIZE) == -1)
                        err(EXIT_FAILURE, "munmap");
                if (pid == -1)
                        err(EXIT_FAILURE, "clone");

                if (waitpid(pid, NULL, 0) == -1)
                        err(EXIT_FAILURE, "waitpid");

                exit(EXIT_SUCCESS);
        }

Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
---
 man/man2/mkdir.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
index d84dbc27e..2af618d68 100644
--- a/man/man2/mkdir.2
+++ b/man/man2/mkdir.2
@@ -203,6 +203,10 @@ does not support the creation of directories.
 .B EROFS
 .I pathname
 refers to a file on a read-only filesystem.
+.B EOVERFLOW
+UID or GID mappings (see
+.BR user_namespaces (7))
+has not been configured.
 .SH VERSIONS
 Under Linux, apart from the permission bits, the
 .B S_ISVTX
-- 
2.43.0


