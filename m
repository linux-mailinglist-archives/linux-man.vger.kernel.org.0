Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6010E73A11F
	for <lists+linux-man@lfdr.de>; Thu, 22 Jun 2023 14:45:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230097AbjFVMpL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Jun 2023 08:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230081AbjFVMpK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Jun 2023 08:45:10 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C3351BC5
        for <linux-man@vger.kernel.org>; Thu, 22 Jun 2023 05:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1687437863;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=8L0ROH64OjwBJoF4pCrSXNoodBOe74nShri8upF11oo=;
        b=YUrNCWC6M0fqQJgEFAkK0eiL3bTm//ncjYYz0q0YX7F49Sv+KoXkM/ssKmCSHl0ePN5qOz
        YgWU8gj+vSpObzXimNuEl4w64NINHISR19xOpiwApTWQsrSQeB4E0gArEyyvqmF/FInXDS
        N08NyChF/fWTJi+mZOY27MEih+81WoY=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-189-v9Whakp5Mri3Rn7darOBjg-1; Thu, 22 Jun 2023 08:44:22 -0400
X-MC-Unique: v9Whakp5Mri3Rn7darOBjg-1
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-2b470c4ce1dso40803241fa.2
        for <linux-man@vger.kernel.org>; Thu, 22 Jun 2023 05:44:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687437860; x=1690029860;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8L0ROH64OjwBJoF4pCrSXNoodBOe74nShri8upF11oo=;
        b=RppPINeVH/Q6B/fFzZmqm0bYSTwPT3tTlMWH0DJATn4JygJdRo59o8cgPcyVECcTb4
         GrFw1lm1pwzuFG91aEx53WdNemy6A/Cv9Qlq/GHz3JSP8L87t4cCTNzbcCB4ifmPBA3I
         S8YZC9uX/XCVjUy6IpzcCptFjPKX8CICO3vi4fM8gqdnLy6SUVw1roZWljBEaIE8W8Dt
         E89x8USyTLDOAp18MK3WbBfiuoxW41BR0SVY7nHpzJBZUdc4uTtTxqOjsFwx8+grjfZL
         necdN70poxBshUs16gu9Ts8+PHSAsaLcJ/FYA+05pJiUL2X1nkI5llBn8XQ2Y6D+T5x7
         cBjQ==
X-Gm-Message-State: AC+VfDzNR1qOO9sqArbeGJ1SydRQ+I56AIAVG3N3xxrkY7CtDMO0mKWl
        yVbQGWnvY4eC7NFo7Jcdoebj5qG+XXi2MkzW8FY0TYNV3HIVpMVrRJVLb8Xmu1wBE7rLi0dnUhi
        cSTdFgIsy52Y2htuGJHb6ZKjJ7ss9nsZjIBrni0S0Ciypv78=
X-Received: by 2002:a2e:3508:0:b0:2b4:5b9c:a019 with SMTP id z8-20020a2e3508000000b002b45b9ca019mr11289660ljz.8.1687437860271;
        Thu, 22 Jun 2023 05:44:20 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6LNSw9T2HTqaT3XHiYgIbV+OhFK6bWuTDFlsjO4qD+iF0fbo1UQupYiJw5RZsRhdepiPPLNOcFD3lWhDClRE4=
X-Received: by 2002:a2e:3508:0:b0:2b4:5b9c:a019 with SMTP id
 z8-20020a2e3508000000b002b45b9ca019mr11289644ljz.8.1687437859997; Thu, 22 Jun
 2023 05:44:19 -0700 (PDT)
MIME-Version: 1.0
From:   Rob Linden <rlinden@redhat.com>
Date:   Thu, 22 Jun 2023 14:44:09 +0200
Message-ID: <CAP0H_AFNdRjyH+yiO-7Mq3TL1rf2MUrX7nn_UTtvE=PapAYgLA@mail.gmail.com>
Subject: [PATCH] recv.2: more verbose explanations, internal reference.
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

while reading the recv manpage I came up with some suggestions which I
believe would make it easier for the reader. They are not corrections
(except for the last block, which I believe was incomplete), just
improvements (IMHO).

What do You think about them?

Signed-off-by: Rob Linden <rlinden@redhat.com>

From 4f4ea0984d0a207960121f142e1b9e181194ef8e Mon Sep 17 00:00:00 2001
From: rokkbert <rokkbert@gmail.com>
Date: Tue, 13 Jun 2023 17:55:08 +0200
Subject: [PATCH] recv.2: increased verbosity and, hopefully, understandability
 a bit.

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

All the best,
rob

