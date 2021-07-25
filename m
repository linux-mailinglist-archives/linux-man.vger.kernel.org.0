Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FB8E3D500B
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:55:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230364AbhGYUPG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:15:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230284AbhGYUPG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:15:06 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42894C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:55:36 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id q6so8621930oiw.7
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=IRo4ygimceAKUlmT2p+Xo56lvFT30fY6CxpJxyjVBPw=;
        b=McJBj4WBtEPhTcWBr4Tz71MxHDf1uQ//gLcb6fUcXppigIRo0kbNRKVGJ0bjeL9ifh
         Jw6rsKSTojvQ52TdI1ad2JbyVcqVcjt+FNNT+M1pu6W3vMVgYFWtDsx1NtJJE0mL7pDD
         ufgu6XZDtM5BJ6doSSR8Ruiu/upI8f6ZNimbiDraV8pRfTh0dOeYWTgUTqMNNnw0DYQc
         NobuhD9Rjb8RP93bJW0FcGnNPJzCM8GTxbuiszNdkJ5yZynk+ver0zlpd2fTp0qw5JvR
         b4y1uicrs8nmRcm3+rg1hWMhralo1ENLc+cznAfGDx8I++bI3NQuK0H/ekcu/4FWiGPV
         R5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=IRo4ygimceAKUlmT2p+Xo56lvFT30fY6CxpJxyjVBPw=;
        b=PumjuXs9JRAzzqRQPiMYLHSJwdaG+HrLAjQN6HXBIUDJ9WwaAPG6RUOmoDw5/4kwCX
         qD1tOCDaw5ubaJ9PaILHqzDe6+J8Jv0f23uVP0FLYel1n14VDIRgXVp4fiCjroe/ON2Z
         gX8Em5K+B7BImBGqtkMiAUqJnXMQ6i4V1b/ygEgMkBxLcxThlBPXRbpx+EQO3yxxvikB
         mYdYB0ZmuGW8pajyLTWpGXGBTfoFEGgKEIztsXclO4dRu9p2NtiA+BdymHJiikgpUakr
         kOOoFFb/vcnP5zD3GusRwOHuc1fVxXnJQwXoiowDWeaEn6wHVTDdpMNunNBqOKVwWZbL
         6NWQ==
X-Gm-Message-State: AOAM531+BiQTh+b22k/H9ipgac+lPjZqNlojN3L9+CiVCJVa+4kNvzpp
        J946492CgdKfws8nCm4QoQYMdz9Fa+6fJkqrxDc=
X-Google-Smtp-Source: ABdhPJxMSODDC5/eIhLa8IfJxYrzQMil+QNj9PBbIUTST12qUvhqURT7zvGzFHxSIDv3Mp88KoJRMLusfyLZo6r+LSc=
X-Received: by 2002:a54:4094:: with SMTP id i20mr8999653oii.159.1627246535660;
 Sun, 25 Jul 2021 13:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170701.GA16440@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170701.GA16440@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:55:24 +0200
Message-ID: <CAKgNAkjEdVpPp5odfd4Y1uOUoM2xHDE36v9G4P+Hbn5B+tXcfw@mail.gmail.com>
Subject: Re: Errors in man pages, here: hier.7
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge


> Man page: hier.7
> Issue: Should start with uppercase letter
>
> "is the traditional place to look for X11 executables; on Linux, it usually "
> "is a symbolic link to I</usr/X11R6/bin>."

Fixed. s/is the/This is the/

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
