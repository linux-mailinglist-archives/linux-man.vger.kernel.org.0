Return-Path: <linux-man+bounces-2294-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BE161A1C295
	for <lists+linux-man@lfdr.de>; Sat, 25 Jan 2025 10:47:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9B3E1886A72
	for <lists+linux-man@lfdr.de>; Sat, 25 Jan 2025 09:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D75E1DB92A;
	Sat, 25 Jan 2025 09:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="WOHgp3wB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4DE1DAC92
	for <linux-man@vger.kernel.org>; Sat, 25 Jan 2025 09:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737798416; cv=none; b=m4puzH5mSLP2Njn+cq73wFwQG8QFNy7r2cKIzl48vr6p4Ps/zXwjQ6xhrFVkxY9PUra5FMOTb5DVlm4KaAfSj8K0wXR46BLnPXUFsgQUUDr3lOXLV6LWYR7Vr1u4PFihxTLfpEKeZW7DpwAstlOvPQ4WYJUlZ+04idmYqHZiEOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737798416; c=relaxed/simple;
	bh=g3XlOwIRFSwVvqFjHQv7CpvLo4oeovOCLvXs2KaKBeg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fDtiFrrWxfHt11sgRuZbb12FkgWtk4QypYC/q8/XD1UzX/Z9wrr1Ua/SLm+hq6jG8jCCtMCGDSGg5UmwY1DMPdexxGJJe2PfCy7ozVwhAsaozHeoZ//xJOITlKqyVfFYTJd2w1Ow8WhQv7/4G3cBJf0AuH6XLiyfY6ZhZ3e7G50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=WOHgp3wB; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1737798378;
	bh=QgDcgXgBw0e0OODgx8lEzuZZiHVu0vTFvJzHSfDQhjA=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=WOHgp3wBVFSB4D+oXUxmzSo6GvfbqIlLLqD0MqiMO2opwew/mnjFnM+kq+jFqgWu4
	 d7R5yzhMQpA9xoqtRyxUiYZd1nyu8wLlbir3ZrfipqpVhBkv5RId0uVf0RxyGt7KuI
	 MLNwKdQcR6M80pvHKcU+e+RmHXukXW5XWJI4jJJY=
X-QQ-mid: bizesmtp78t1737798374t0j35re4
X-QQ-Originating-IP: VbWjIpVHdOZC34McICPIVzl0SbxosLr8u3X6KIIDTIo=
Received: from localhost.localdomain ( [220.250.46.165])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 25 Jan 2025 17:46:12 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 10517027248427496648
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Chen Linxuan <chenlinxuan@uniontech.com>,
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: [PATCH v2] man/man2/mkdir.2: Add EOVERFLOW
Date: Sat, 25 Jan 2025 17:46:05 +0800
Message-ID: <FA96BA75CD41C940+20250125094605.28203-1-chenlinxuan@uniontech.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: MyirvGjpKb1j86pt50fyNKhMyrPKL2FcNwxWrR+gvc7TyQ1f0LKb92aD
	ypz3FtFsfrvSZJCU/l14YSR3c9Mib4c/RFfPS3OhFMF/ZROU0pDqzC8Z2af/9j3RrGXHecx
	EMz/PxyD6eswoYgYRlDC07hx4qSc9hkgXKFyRCN2Sk/JPRjrMjVm8bTMalQXhI0MPjKCLiG
	Bn2ArlJIAIw19cOw8c19mE9DTZeVXaPlxK1b8LyUrli1OLRvoYuNdpfJ5W6UqbRQGoBy0hj
	c3aViqW3UUoTPjb/RyVSsY8SLlfpM7NRic7zpGX9L5ujUeX+3iKINB3f9YIJYfvlRIwG2I+
	5EySdWLt2yUbL6vyRWH+9Pk8TNXo1oEgMbHtiet26fTJmcHASeVzK19+gqY7IE1bzIwtXk2
	KsHPxXzzw8I7Hqt8xMSEj6cCkA56WCx0bKe4GGct+6RN70oGcba37K28gPwHUor3CeDjXiw
	e6QII2PDnKUHFsoxBEh1OgYsJxsJLwlLuzbSSKDnM5ufZ5kQEJzzmIjv+EUZDZvA9EIFm5j
	/nyI8oQTUVi63Y2yt2tiJsBH8sLspwfbyrI6NDdKUAji5oTcQT6OlkniyClvRAOXKZ/+Nwa
	xjryMNwtbonrbfO3unjd9MaHfZ9+dH5akI0p8+OvtasRiqizU9corFwUHoXouFnhd9tV+9/
	L5DRFRoIC1UqvVkqKNm8ejFl99ZtdTCcVvM0gmavMjlSeWyXgflGmA5X1uf24q3MpTPTgwU
	ha7TGyP7qv9p6D3srhfjuaXSzGk5IyiAMArAjFb8k/lU/YCzURdfJWtA2pBbK17w01tF/GN
	NmKWOPvxjB4mGwgYETaR9yLWkV9TBqbf/8/HyDirMHK1cG+LFVLHdNLY0J/3SqH3YDRgR/+
	QOmKD7VMT3I4+yT2OLgQly2HE4HQ7tVjkqIv5i8VV8ircVv7iilwerSqlLDxDmu5FvOVG7p
	F6Km8h/y8hcaSwmbHxEzvVdwr
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

`mkdir` and `mkdirat` might set errno to EOVERFLOW when UID or GID
mapping has not been configured. See
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=036d523641c66bef713042894a17f4335f199e49

This is a small program in the commit message that shows this behavior:

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

int main(int argc, char *argv[])
{
        char *stack; /* Start of stack buffer */
        char *stackTop; /* End of stack buffer */
        pid_t pid;

        stack = mmap(NULL, STACK_SIZE, PROT_READ | PROT_WRITE,
                     MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK, -1, 0);
        if (stack == MAP_FAILED)
                err(EXIT_FAILURE, "mmap");

        stackTop = stack + STACK_SIZE;

        pid = clone(childFunc, stackTop, CLONE_NEWUSER | CLONE_NEWNS | SIGCHLD,
                    NULL);
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


