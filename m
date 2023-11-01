Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 932697DDA3E
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 01:42:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236795AbjKAAhW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 20:37:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236786AbjKAAhV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 20:37:21 -0400
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com [IPv6:2607:f8b0:4864:20::832])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19A6510F
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 17:37:16 -0700 (PDT)
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-41cd4cc515fso44943141cf.1
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 17:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698799035; x=1699403835; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+vPjt8kqg5fLRGyM4ffq27G39Le8BrOSvupHNBn+TE=;
        b=QlO5mWBg9BilGumlwN/7VF6KgcvB2eZ/EUP92YJ5p3Kpl3+yfvLu6AzwNweHzpda/x
         f3XvqEOgtdYBgvF+IWyoQeahUyCk3m/rEjpNLWA6Nja4mJJTnIWoNSL75FG52/b4t7fZ
         PX3WwvWp3vic+MXMSleLxd83ANTfsedYI6/IuthMKAzBRv6g7HsYGdjkBtrqVjksW8XW
         PbkZIHOPz9DRBPoGTBfWTMDTdd0k5yzA5piOZzRkaa+tocHddFDH9cltKlnIPChPl8jC
         pj0TVd9yZs5+GtrDEPYJBzGY5kNG4jYXRlKpTx2k2Pu0r8q4E6loLtUSbhNRnqRcZ4HJ
         VieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698799035; x=1699403835;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/+vPjt8kqg5fLRGyM4ffq27G39Le8BrOSvupHNBn+TE=;
        b=JVbPAa+JPR99Fo5khumG52t9/gbpVI8W3w2a2UT+8vAV7Ru4dR1452z4SnSaT15mz9
         M7K4/rkDZCIBq5GARFnzwnnLxYi+gf2HinyVrguHcL3AitmbkUM0vdwmoLch0MrnOywi
         hSPy9gmI5QSHUecfqziPENIdTq3m1EtMt8+g/X8Bhs/W5FbqcR9ONq9SuB9M2Fxf0bBe
         oyP0cj1XHlqJed1XiPRrqhwytWHz+Fzg9nDmHiIg5h+uzMYYvmHlp7vKl76H/OLvMZfZ
         zLRfij1l+HX4QYaK7Pbdw6uE0BIFxeI69mfBZOOrn8SW+I3CE8syLaCcfA50MJ79XQGx
         0ckQ==
X-Gm-Message-State: AOJu0YzJiyef41hnboAE/lSaWJbxrYTwiQSdgUWQKAJONoe0ECMqDWEM
        XI3efVBcLwGYC8hTY1iMPMnR2puEqAhtFcNxm81mSg==
X-Google-Smtp-Source: AGHT+IEEObXaW1iY/7E81gQuLrgJZ1mDckG69bLIyREJZXCoe3co4gp0EORkHUxbN8ZSoQb33TLyrEWHYrXt4ZrH3yE=
X-Received: by 2002:a05:6214:5099:b0:66d:55b7:e3d with SMTP id
 kk25-20020a056214509900b0066d55b70e3dmr17058963qvb.28.1698799035005; Tue, 31
 Oct 2023 17:37:15 -0700 (PDT)
MIME-Version: 1.0
References: <4678853.9Mp67QZiUf@nimes> <ZUD12kxqzd0PsT_E@debian>
 <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com>
 <ZUEnQmDDLwwfCd_g@debian> <CAJgzZorygh1++Nk3b+t_DhiROL5PQAme+H-ZaKjW9oscu2=LSg@mail.gmail.com>
 <ZUFKMkXrsvahfK3k@debian> <CAJgzZoo+szFoHqY-V+1Fuv0wp6tvGwwxsc0na89FYdqZ3Z7gfA@mail.gmail.com>
 <ZUFwNEo6z8MCHjgA@debian>
In-Reply-To: <ZUFwNEo6z8MCHjgA@debian>
From:   enh <enh@google.com>
Date:   Tue, 31 Oct 2023 17:37:03 -0700
Message-ID: <CAJgzZoo151wk8Zk8thO-xbztGEpPcoXUbFAaNRmYMyUcRUB=fg@mail.gmail.com>
Subject: Re: [PATCH] prctl.2: Fix typo
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Oct 31, 2023 at 2:23=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott,
>
> On Tue, Oct 31, 2023 at 12:15:43PM -0700, enh wrote:
> > "operation" is certainly the most general, and i struggle to see any
> > value to the current wording --- it's not like any of them help the
> > reader know "what goes here" without accompanying documentation.
> >
> > TL;DR: "yeah, if you change the man pages, i'll definitely change
> > Android's headers to simplify them in this way" (and i have no
>
> I'll do it; will CC you on any such changes.

fwiw, here's the full list of "cmd"s, "request"s, "op"s, and "option"s
(manually edited to remove the legit "option"s like getsockopt()):

~/aosp-main-with-phones/bionic/libc/include$ egrep -r
'__(cmd|option|request|op)\b' | sort
bits/fcntl.h:int fcntl(int __fd, int __cmd, ...);
bits/ioctl.h:int ioctl(int __fd, int __request, ...);
bits/lockf.h:int lockf(int __fd, int __cmd, off_t __length)
__RENAME_IF_FILE_OFFSET64(lockf64) __INTRODUCED_IN(24);
sys/epoll.h:int epoll_ctl(int __epoll_fd, int __op, int __fd, struct
epoll_event* __BIONIC_COMPLICATED_NULLNESS __event);
sys/file.h:int flock(int __fd, int __op);
syslog.h:void openlog(const char* _Nullable __prefix, int __option,
int __facility);
sys/msg.h:int msgctl(int __msg_id, int __cmd, struct msqid_ds*
_Nullable __buf) __INTRODUCED_IN(26);
sys/prctl.h:int prctl(int __option, ...);
sys/ptrace.h:long ptrace(int __request, ...);
sys/quota.h:int quotactl(int __cmd, const char* _Nullable __special,
int __id, char* __BIONIC_COMPLICATED_NULLNESS __addr)
__INTRODUCED_IN(26);
sys/reboot.h:int reboot(int __cmd);
sys/sem.h:int semctl(int __sem_id, int __sem_num, int __cmd, ...)
__INTRODUCED_IN(26);
sys/shm.h:int shmctl(int __shm_id, int __cmd, struct shmid_ds*
_Nullable __buf) __INTRODUCED_IN(26);
time.h:int clock_nanosleep(clockid_t __clock, int __flags, const
struct timespec* _Nonnull __request, struct timespec* _Nullable
__remainder);
time.h:int nanosleep(const struct timespec* _Nonnull __request, struct
timespec* _Nullable __remainder);
~/aosp-main-with-phones/bionic/libc/include$

(i'll change the <time.h> *sleep()s to use __duration instead:
https://android-review.googlesource.com/c/platform/bionic/+/2813844)

> Cheers,
> Alex
>
> > particular opinion about _which_ word, and that sounds like a bikeshed
> > it's not worth going near :-) ).
>
> --
> <https://www.alejandro-colomar.es/>
