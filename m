Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E37A1750283
	for <lists+linux-man@lfdr.de>; Wed, 12 Jul 2023 11:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbjGLJHU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Jul 2023 05:07:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231294AbjGLJGj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jul 2023 05:06:39 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 128DF173A
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 02:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689152743;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=2jecaLVSR5GfauCgnsT09f6T5SPtWYHg79ax/FkNb3s=;
        b=iJg9SlaO4MooVt2iSI3+GF7L9pzGuQyXvxS5vBg3/sPdQqljb8cml9HBROKZSetollF/ZY
        hs2j/BsqgWre2M7Qp3fMstkebjnS/nLh1rzg9+H/+uIWbVpT1X5qJaRbDdkFfA/jeclGeE
        gZMqv0vYqzLu0Z5SVOQYrBu5Z+hvdd8=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-110-NxwMKYswN6uezSGUaHBvmw-1; Wed, 12 Jul 2023 05:05:41 -0400
X-MC-Unique: NxwMKYswN6uezSGUaHBvmw-1
Received: by mail-ed1-f72.google.com with SMTP id 4fb4d7f45d1cf-51e2497eeefso4315436a12.3
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 02:05:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689152740; x=1691744740;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2jecaLVSR5GfauCgnsT09f6T5SPtWYHg79ax/FkNb3s=;
        b=TcmOKlpddwBDtjO3lYaMX15MNgzWj9JdSNk/qKPgY93gIcMxoGr1KSAOAaEYD49nDi
         10Buk69dkbMssVi146UP9jXmPCSFkKjh1jQHFrksOaUFU9aTFTw0LRUkp8gY7ftdyGUO
         BAn2eoz/kQbgCRDDqp9yyzDuS1gKd9WB5/C+dv7PtkpbONqhr792IILmPCiuVLlkTw5j
         8FB7q57LTJUlilJy7+6/OubaWdZLqezIc/EWYejD6yIiyJdLMRemHKmVh+3dMoPjNT/U
         +3Z84ixcCMDnbjfcTSoyDXXIraaJYb2xVswr9LKJlyAhPYbXKIbvjmLDPl0BkXD6rN8k
         fMXw==
X-Gm-Message-State: ABy/qLZU0SO9mDyzIL/oQQFGkFVQl1LgHcNFBfzZ8b2DO+WCWr7HSfjN
        S4CoYCzH+NYcbBup3/D6VjZ4zXIP9yBIqrxapE8XieCn76bXzjl3aAGmkAXQa2+q7WAVUh8bTA9
        jP/Dv4JNud4YTc2yxQ6L3zKZ+n1Zd1Z7b533/aj9p/MbyvIw=
X-Received: by 2002:a50:fe93:0:b0:51a:5a25:6631 with SMTP id d19-20020a50fe93000000b0051a5a256631mr15942328edt.3.1689152740726;
        Wed, 12 Jul 2023 02:05:40 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHmuTW7ujdr1lDyq1jZfdAGhpxlhx2HYnRaJiHksUqP7Zc4WtwSxHq45Qb2LrKz0gr4+39tcRCwCoIn2ugNJfU=
X-Received: by 2002:a50:fe93:0:b0:51a:5a25:6631 with SMTP id
 d19-20020a50fe93000000b0051a5a256631mr15942313edt.3.1689152740347; Wed, 12
 Jul 2023 02:05:40 -0700 (PDT)
MIME-Version: 1.0
From:   Rob Linden <rlinden@redhat.com>
Date:   Wed, 12 Jul 2023 11:05:29 +0200
Message-ID: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
Subject: [PATCH] recv.2: msg_iovec / MSG_ERRQUEUE / -v
To:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alejandro!

This is a combined repost of the 3 individual patches I sent in June.  (I
had thought it makes sense to split it up, because the changes were
unrelated, so maybe one could be approved while another one needs
discussion).

I think there is a mistake on the manpage for recv.  In the description of
the flag MSG_ERRQUEUE it says that data is passed via "msg_iovec".  This is
probably referring to msg_iov in struct msghdr (from
/usr/include/bits/socket.h).  A "msg_iovec" doesn't seem to exist.  Maybe it
was spelled wrong because it's of type struct iovec.  If it is indeed wrong
then the following patch corrects it.

I think the flag MSG_ERRQUEUE, that is described on the man page recv.2 is
only applicable to recvmsg, and not recv or recvfrom.  Maybe it would be
good to mention it, just like it is specified for MSG_CMSG_CLOEXEC.  The
following patch does that.

While reading the recv manpage I came up with some suggestions which I
believe would make it easier for the reader.  They are not corrections
(except for the last block, which I believe was incomplete), just
improvements (IMHO).

Thanks & all the best,
rob


From 830a1b1233eb69bd8a4a64296581d094fb0edc46 Mon Sep 17 00:00:00 2001
From: rokkbert <rokkbert@gmail.com>
Date: Tue, 6 Jun 2023 10:00:20 +0200
Subject: [PATCH 1/3] recv.2: field msg_iov in struct msghdr is wrongly called
 msg_iovec. Corrected to msg_iov.

---
 man2/recv.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 27d6d612c..62e43c9aa 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -159,7 +159,7 @@ and
 for more information.
 The payload of the original packet that caused the error
 is passed as normal data via
-.IR msg_iovec .
+.IR msg_iov .
 The original destination address of the datagram that caused the error
 is supplied via
 .IR msg_name .
-- 
2.39.2


From c3ec57d21d2b754ee05913cfa035f5e31aaaae95 Mon Sep 17 00:00:00 2001
From: rokkbert <rokkbert@gmail.com>
Date: Tue, 13 Jun 2023 17:45:32 +0200
Subject: [PATCH 2/3] recv.2: added note that flag MSG_ERRQUEUE is only
 applicable to recvmsg. Only recvmsg allows the caller to even pass the
 required struct msghdr to receive the error data.

---
 man2/recv.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 62e43c9aa..3697d0c84 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -145,7 +145,7 @@ which will affect all threads in the calling process
 and as well as other processes that hold file descriptors
 referring to the same open file description.
 .TP
-.BR MSG_ERRQUEUE " (since Linux 2.2)"
+.BR MSG_ERRQUEUE " (" recvmsg "() only; since Linux 2.2)"
 This flag
 specifies that queued errors should be received from the socket error queue.
 The error is passed in
-- 
2.39.2


From 4f4ea0984d0a207960121f142e1b9e181194ef8e Mon Sep 17 00:00:00 2001
From: rokkbert <rokkbert@gmail.com>
Date: Tue, 13 Jun 2023 17:55:08 +0200
Subject: [PATCH 3/3] recv.2: increased verbosity and, hopefully,
 understandability a bit.

---
 man2/recv.2 | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 3697d0c84..f675f65aa 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -92,7 +92,10 @@ All three calls return the length of the message on
successful
 completion.
 If a message is too long to fit in the supplied buffer, excess
 bytes may be discarded depending on the type of socket the message is
-received from.
+received from, e.g. for
+.BR SOCK_DGRAM ", but not for " SOCK_STREAM .
+To find out how many bytes are available see the flags
+.BR MSG_PEEK " and " MSG_TRUNC .
 .PP
 If no messages are available at the socket, the receive calls wait for a
 message to arrive, unless the socket is nonblocking (see
@@ -100,7 +103,7 @@ message to arrive, unless the socket is nonblocking (see
 in which case the value \-1 is returned and
 .I errno
 is set to
-.BR EAGAIN " or " EWOULDBLOCK .
+.BR EAGAIN " or " EWOULDBLOCK " (see " ERRORS ).
 The receive calls normally return any data available, up to the requested
 amount, rather than waiting for receipt of the full amount requested.
 .PP
@@ -256,7 +259,8 @@ For use with Internet stream sockets, see
 .TP
 .BR MSG_WAITALL " (since Linux 2.2)"
 This flag requests that the operation block until the full request is
-satisfied.
+satisfied, i.e.
+.BR len " bytes have been written to the buffer."
 However, the call may still return less data than requested if
 a signal is caught, an error or disconnect occurs, or the next data to be
 received is of a different type than that returned.
@@ -432,8 +436,9 @@ is returned to indicate that expedited or
out-of-band data was received.
 indicates that no data was received but an extended error from the socket
 error queue.
 .SH RETURN VALUE
-These calls return the number of bytes received, or \-1
-if an error occurred.
+These calls return the number of bytes copied to buf, the number of bytes
+received by the socket (see
+.BR MSG_TRUNC "), or -1 if an error occurred."
 In the event of an error,
 .I errno
 is set to indicate the error.
-- 
2.39.2

