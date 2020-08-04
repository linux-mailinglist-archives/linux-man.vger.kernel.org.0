Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 687CE23B7EC
	for <lists+linux-man@lfdr.de>; Tue,  4 Aug 2020 11:40:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726807AbgHDJkp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Aug 2020 05:40:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725832AbgHDJkp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Aug 2020 05:40:45 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D87F1C06174A
        for <linux-man@vger.kernel.org>; Tue,  4 Aug 2020 02:40:44 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id q76so2225943wme.4
        for <linux-man@vger.kernel.org>; Tue, 04 Aug 2020 02:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=iav4m4B008hsmECdE+mTLyA574h7Kp4I+f2tTKPt8HI=;
        b=EK03ilz1wWed+I8SZILUDf2FtZdLNj6QnFoUFyTfDSbTT34LrMI6vGlsEboCFg1pNB
         4K6kUdjZeW0ImMEjXuTUP1kgA81Qx2Noxw3EblvCN+p+bHNDkJ0szspMB6sSrJgesgmY
         KtWKWY16DgMdUXW1AvJ2/kTT9ftY1YHz7NtbMBaGJ+tQBiWg/USE9zEtJRjCGds3maJ7
         IWXTIGpIChL56RQldag8iDUy4L1yBwuN+kSjTaq7p/LwVzX0iz8ozI+FUE1GVreQoulX
         9mEmvI7lRZfsYHgPiiR3Y8Vj4BzQhUi3yK0teKP1Fu/lHpDsC7nZl/79qG1+sJL9ChCA
         DWHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=iav4m4B008hsmECdE+mTLyA574h7Kp4I+f2tTKPt8HI=;
        b=ZROjyZFrE+h2rKHfUs20ppJ6yILZoi1w66oCFgZOAZsBD4YdiRXVZi6WVkKLhBEQdO
         /uatlqUDYhD4gaKzotgdaHopxs7zasCw7GUKN7Uc4EVrm45qtQel+Jn/8szd3cbl9MPc
         u4fa02W8J+frnqolX2CxZKVfBgkwfXCzrT0Meyd5ul/GKH+WN6CazEd96XHqHnYpYKHB
         X7CB6BlKIDo+jMojRp31JDizbMQPlS/8p0YPWEXDBS9zFkxEt70XTnsUKuC/xPbGxp1r
         fXu0/0IzZJ2GwQXS6P5vi3cr1wP2pp0KRsIxoSah7kVQ6759fIowecCQVfhA7wN6B4ya
         uyaA==
X-Gm-Message-State: AOAM533pKIK3xGOtEC9aR1VZDO7t7DdAju9F6JP0TTdrg0xyJkwFKtxk
        G/gaqTXwxJ5Z1dVazH1+LJg=
X-Google-Smtp-Source: ABdhPJytxhBUp7jXNFjvQhJAY5+kdk1iluvp4CbYBEN3AYNMQUHm+pl0L0hGUC4V2ybDJG+PMNgsvw==
X-Received: by 2002:a1c:c910:: with SMTP id f16mr1851902wmb.82.1596534043592;
        Tue, 04 Aug 2020 02:40:43 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id z67sm3759615wmg.28.2020.08.04.02.40.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Aug 2020 02:40:42 -0700 (PDT)
To:     linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [patch] queue.3: Comment out text for functions not in glibc
 (related: 6559169cac)
Message-ID: <c076cbde-0ef5-9e92-8c82-4b6e5d765fea@gmail.com>
Date:   Tue, 4 Aug 2020 11:40:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

===========
DESCRIPTION
===========

I'm documenting ``CIRCLEQ_*`` macros in queue.3.  While writing this, I
noticed that the documentation for some types of queues/lists talked
about swapping contents of two lists, but only for some of them.  I then
found that those macros (``*_SWAP``) don't exist in my system (Debian),
but exist in BSD, and I also found that a previous commit (6559169cac)
commented out a lot of the *_SWAP macros documentation, but not all, and
the reason was that they were not present on glibc.

I checked that I didn't have any of the *_SWAP macros on my glibc, so I
think this is probably that the commit simply forgot to comment some of
them.

=======
TESTING
=======

I tun ``sudo make`` and then visualized the man page with
``man 3 queue``, and the changes looked good.

I also noticed that the subsection ``Tail queue example`` contents were
wrong, as they contained calls to CIRCLEQ_* macros.  I will address that
in a future patch, before I submit the patch documenting CIRCLEQ_*.

________________________________________________________________________
P.S.:  I'd like to know, as my previous patch was oddly reformatted by
my mailer, if you can see it correctly this time.  I changed some,
configuration, so I hope it is fine.

=====
PATCH
=====

 From 2282ba2397e6ac7dca4cc09dfcb92ac524718f27 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Sun, 26 Jul 2020 23:36:42 +0200
Subject: [PATCH] queue.3: Comment out text for functions not in glibc
  (related: 6559169cac)

---
  man3/queue.3 | 26 +++++++++++++-------------
  1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 00e4b1958..ff1f42f3a 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -110,8 +110,8 @@
  .Nm TAILQ_LAST ,
  .Nm TAILQ_NEXT ,
  .Nm TAILQ_PREV ,
-.Nm TAILQ_REMOVE ,
-.Nm TAILQ_SWAP
+.Nm TAILQ_REMOVE
+.\" .Nm TAILQ_SWAP
  .Nd implementations of singly-linked lists, singly-linked tail queues,
  lists and tail queues
  .Sh SYNOPSIS
@@ -172,7 +172,7 @@ lists and tail queues
  .Fn LIST_NEXT "TYPE *elm" "LIST_ENTRY NAME"
  .\" .Fn LIST_PREV "TYPE *elm" "LIST_HEAD *head" "TYPE" "LIST_ENTRY NAME"
  .Fn LIST_REMOVE "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" "LIST_ENTRY 
NAME"
+.\" .Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" 
"LIST_ENTRY NAME"
  .\"
  .Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY 
NAME"
  .Fn TAILQ_EMPTY "TAILQ_HEAD *head"
@@ -197,7 +197,7 @@ lists and tail queues
  .Fn TAILQ_NEXT "TYPE *elm" "TAILQ_ENTRY NAME"
  .Fn TAILQ_PREV "TYPE *elm" "HEADNAME" "TAILQ_ENTRY NAME"
  .Fn TAILQ_REMOVE "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" 
"TAILQ_ENTRY NAME"
+.\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" 
"TAILQ_ENTRY NAME"
  .\"
  .Sh DESCRIPTION
  These macros define and operate on four types of data structures:
@@ -213,8 +213,8 @@ Insertion of a new entry after any element in the list.
  O(1) removal of an entry from the head of the list.
  .It
  Forward traversal through the list.
-.It
-Swapping the contents of two lists.
+.\" .It
+.\" Swapping the contents of two lists.
  .El
  .Pp
  Singly-linked lists are the simplest of the four data structures
@@ -1157,13 +1157,13 @@ The macro
  removes the element
  .Fa elm
  from the tail queue.
-.Pp
-The macro
-.Nm TAILQ_SWAP
-swaps the contents of
-.Fa head1
-and
-.Fa head2 .
+.\" .Pp
+.\" The macro
+.\" .Nm TAILQ_SWAP
+.\" swaps the contents of
+.\" .Fa head1
+.\" and
+.\" .Fa head2 .
  .Ss Tail queue example
  .Bd -literal
  TAILQ_HEAD(tailhead, entry) head =
-- 
2.27.0
