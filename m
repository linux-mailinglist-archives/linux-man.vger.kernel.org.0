Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41551CC4A3
	for <lists+linux-man@lfdr.de>; Fri,  4 Oct 2019 23:12:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731160AbfJDVMO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Oct 2019 17:12:14 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:56696 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725826AbfJDVMO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Oct 2019 17:12:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1570223533;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=SfWPnWFwI3i+1EBZkz+WWx17cnkUYZftRq8RVdxcY/Q=;
        b=SRqU4xd3a/NKuoVpukCjbOvM1bKAZLNtmi8jvDknWW+xirJ+/SPQ6tzZW/yYVJWBG7ActS
        ovwjNizMecUapngdfvyKxa6+29pVNF1HSg01i5K2+Vco8F71HXRMvdPlN4qZuOjojGaUNe
        01GfwEY/hidKVOD6blu3PBntb8az77I=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-277-iKXVhozGPhaZM96rC3Swkg-1; Fri, 04 Oct 2019 17:12:11 -0400
Received: by mail-qk1-f199.google.com with SMTP id b67so7818195qkc.1
        for <linux-man@vger.kernel.org>; Fri, 04 Oct 2019 14:12:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:organization:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=6zlA8AHJ90mPiW0ZS/HcmcKLwPozhyu+p19QaiX4W9g=;
        b=dei3VO+PeNYU0t1bijt37EGN/G1XFUsOqQCLi1jwnegOK9IyiHIUvukGdCDKEiTsyl
         aQsDYcAdiixuFCAvdF9e6GMq4SevU8u29DDs+ExW/Fgw/smx/Yjzy9nE4WF7dVJjdDbA
         VQbVVTPtika53NjcBDMZgb9mevEj+C1oz+FZbuTDtpxmmGLL+Nl10PlNXIjvFt4bfHxm
         ZGj9gdGyDpHmUo3Sl2SRGJlhPm8KCDyfEYNoxn3LjKuQp3FeEkV9CaVgO9DSapASjX/D
         3eYVdvWxsq7V2uxKHMFsGByfpiwbZCM2rCrxAoZkxFoNujgOIC1m0uVfK83jD2w9d9RD
         q6PQ==
X-Gm-Message-State: APjAAAWrLJfsQbvqFHegOjoqAvSIuGg62Uub7fGv6vcYrg471IZhb37b
        qv1Hsu7J6AlJc1R/6M2D6WXSa7e1yWt17oxGTdzvTiAccOvrOBASC5DlowB/sOBrozK7xHqULaU
        tR3QMNYht7nGRw86xUm/H
X-Received: by 2002:a37:a550:: with SMTP id o77mr12746717qke.205.1570223530859;
        Fri, 04 Oct 2019 14:12:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzAbF8CSQmBMpxpU0qVwS/3i61JwyXCPjaVp5hGXp9BICi2hsD+MveZxJtPlceCytF6w8uU4g==
X-Received: by 2002:a37:a550:: with SMTP id o77mr12746670qke.205.1570223530500;
        Fri, 04 Oct 2019 14:12:10 -0700 (PDT)
Received: from [192.168.1.4] (192-0-145-99.cpe.teksavvy.com. [192.0.145.99])
        by smtp.gmail.com with ESMTPSA id p7sm3665672qkc.21.2019.10.04.14.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2019 14:12:09 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
From:   Carlos O'Donell <carlos@redhat.com>
Subject: [patch] Describe issues with cancellation points in signal handlers.
Organization: Red Hat
Message-ID: <953b30ef-6546-ab16-06cb-e9d8d179dce2@redhat.com>
Date:   Fri, 4 Oct 2019 17:12:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-MC-Unique: iKXVhozGPhaZM96rC3Swkg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In a recent conversation with Mathieu Desnoyers I was reminded
that we haven't written up anything about how deferred cancellation
and asynchronous signal handlers interact. Mathieu ran into some
of this behaviour and I promised to improve the documentation in
this area to point out the potential pitfall.

Thoughts?

8< --- 8< --- 8<
In pthread_setcancelstate.3, pthreads.7, and signal-safety.7 we
describe that if you have an asynchronous signal nesting over a
deferred cancellation region that any cancellation point in the
signal handler may trigger a cancellation that will behave
as-if it was an asynhcronous cancellation. This asynchronous
cancellation may have unexpected effects on the consistency of
the application. Therefore care should be taken with asynchronous
signals and deferred cancellation.
---
 man3/pthread_setcancelstate.3 | 5 ++++-
 man7/pthreads.7               | 9 +++++++++
 man7/signal-safety.7          | 5 +++++
 3 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/man3/pthread_setcancelstate.3 b/man3/pthread_setcancelstate.3
index 0237d572b..1a6fe45bf 100644
--- a/man3/pthread_setcancelstate.3
+++ b/man3/pthread_setcancelstate.3
@@ -78,7 +78,10 @@ A cancellation request is deferred until the thread next=
 calls
 a function that is a cancellation point (see
 .BR pthreads (7)).
 This is the default cancelability type in all new threads,
-including the initial thread.
+including the initial thread. Even with deferred cancellation a
+cancellation point in an asynchronous signal handler may still
+be acted upon and the effect is as-if it was an asynchronous
+cancellation.
 .TP
 .B PTHREAD_CANCEL_ASYNCHRONOUS
 The thread can be canceled at any time.
diff --git a/man7/pthreads.7 b/man7/pthreads.7
index 06417d503..b39236c39 100644
--- a/man7/pthreads.7
+++ b/man7/pthreads.7
@@ -564,6 +564,15 @@ not specified in the standard as cancellation points.
 In particular, an implementation is likely to mark
 any nonstandard function that may block as a cancellation point.
 (This includes most functions that can touch files.)
+.in
+.PP
+It should be noted that even if an application is not using
+asynchronous cancellation, that calling a function from the above list
+from an asynchronous signal handler may cause the equivalent of
+asynchronous cancellation. The underlying user code may not expect
+asynchronous cancellation and the state of the user data may become
+inconsistent. Therefore signals should be used with caution when
+entering a region of deferred cancellation.
 .\" So, scanning "cancellation point" comments in the glibc 2.8 header
 .\" files, it looks as though at least the following nonstandard
 .\" functions are cancellation points:
diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
index 3879a5aef..051702b76 100644
--- a/man7/signal-safety.7
+++ b/man7/signal-safety.7
@@ -314,6 +314,11 @@ is likely to remove
 .BR fork (2)
 from the list of async-signal-safe functions.
 .\"
+.IP * 3
+Asynchronous signal handlers that call functions which are cancellation
+points and nest over regions of deferred cancellation may trigger
+cancellation whose behavior is as-if asynchronous cancellation had
+occurred and may cause application state to become inconsistent.
 .SS Deviations in the GNU C library
 The following known deviations from the standard occur in
 the GNU C library:
--=20
2.21.0

