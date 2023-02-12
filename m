Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD05169379D
	for <lists+linux-man@lfdr.de>; Sun, 12 Feb 2023 14:38:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229477AbjBLNiO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Feb 2023 08:38:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjBLNiO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Feb 2023 08:38:14 -0500
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5CA0113E6
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 05:38:12 -0800 (PST)
Received: from archbook (unknown [45.130.87.4])
        by mail.ispras.ru (Postfix) with ESMTPSA id 4825E40737A1;
        Sun, 12 Feb 2023 13:38:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 4825E40737A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
        s=default; t=1676209085;
        bh=O8dzd9yy8SNQgeaOS/kPFyNoQXgULM9vSTlNJgc59R0=;
        h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
        b=FFmLH9hjDT3e7jRCeZK/Wb9cjGpnTCSgdW+eWXnzvIFGWzYACASde5Oya1djZOkGW
         M9JCTvz1LRCiAOldhSZniSExqVWeyOWAVfXN1aJ0Q4ZETqMXwV4HrE/OOh7BT7TMJZ
         5BU4vQMceHQL7A17mHhS1yl3hfmDm1LqzrprHdok=
From:   Vladislav Ivanishin <vlad@ispras.ru>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [patch] recv.2: Mention SOCK_SEQPACKET in MSG_TRUNC flag
 description
References: <87v8n03coa.fsf@ispras.ru>
        <00e2987e-0f37-b572-256c-163ded066fa0@gmail.com>
Date:   Sun, 12 Feb 2023 16:38:04 +0300
In-Reply-To: <00e2987e-0f37-b572-256c-163ded066fa0@gmail.com> (Alejandro
        Colomar's message of "Sun, 11 Dec 2022 17:09:11 +0100")
Message-ID: <87cz6fqa0z.fsf@ispras.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


unix_seqpacket_recvmsg() calls unix_dgram_recvmsg() which handles
MSG_TRUNC. This has been the case since the handling was added in
9f6f9af7694ede6314bed281eec74d588ba9474f; see net/unix/af_unix.c:

static int unix_seqpacket_recvmsg([...])
{
        [...]
	return unix_dgram_recvmsg(iocb, sock, msg, size, flags);
}

The sequential-packet socket type seems to have been left out from the
description by an oversight.

Signed-off-by: Vladislav Ivanishin <vlad@ispras.ru>
---

Hi Alex,

On Sun, Dec 11 2022, Alejandro Colomar <alx.manpages@gmail.com> wrote:
> Hi Vladislav,
>
> On 11/27/22 11:38, Vladislav Ivanishin wrote:
>> unix_seqpacket_recvmsg() calls unix_dgram_recvmsg() which handles
>> MSG_TRUNC. This has been the case since the support for this flag was
>> implemented in the latter; the sequential-packet socket type seems to
>> have been left out from the description by an oversight.
>> Signed-off-by: Vladislav Ivanishin<vlad@ispras.ru>
>
> Could you please point to the relevant kernel commits, or quote the relevant
> lines of code, in the commit message?
>
> Thanks,
>
> Alex
    
Sure, here's an updated version.

Vlad

 man2/recv.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 5298a2745..81cd1957c 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -226,7 +226,8 @@ subsequent receive call will return the same data.
 For raw
 .RB ( AF_PACKET ),
 Internet datagram (since Linux 2.4.27/2.6.8),
-netlink (since Linux 2.6.22), and UNIX datagram
+netlink (since Linux 2.6.22),
+and UNIX datagram as well as sequenced-packet
 .\" commit 9f6f9af7694ede6314bed281eec74d588ba9474f
 (since Linux 3.4) sockets:
 return the real length of the packet or datagram,
-- 
2.39.1
