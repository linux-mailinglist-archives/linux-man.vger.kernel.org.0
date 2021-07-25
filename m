Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ABAA3D5085
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 00:59:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231205AbhGYWST (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:18:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbhGYWST (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:18:19 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DEA7C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 15:58:48 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id o185so8841680oih.13
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 15:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=HFVih7PNtA4IXQ/YvuXxEpPn0Mem8EytsC7ijqgR4X8=;
        b=GAKjnTpApFNZQYf5R3cDB2feNjRiH4SsDhGrLRUxa0kFVJ7NMD+OqroFoAcHYssNaB
         tm6m8HHPzmJCzfM1Bdo5yadUDjE1KznoFyAuSLPgALnu3R29bDsxv7/jpv1u2adIstwB
         3BonnvIql+ad8w3X5FD+3VR2rWSwAllTpjjeTLkNJOQCoMWKZ7BxLUAjX0zaHEGex21j
         bWA6n0/adJBnskydqB47qE6DhcukNjW7RsbQr0s53+Z28m7lSGQxztKiUKUvh6xskGqA
         63EcCD2DHIDVc2wj50X91gxIcEE09G1zSeSYpCxDrev1RJSs4i7+hJZ01ZbVBcDRppP9
         7I5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=HFVih7PNtA4IXQ/YvuXxEpPn0Mem8EytsC7ijqgR4X8=;
        b=pXC4evmC6XHybC0D2Nyw7mJVabCg1oIDcbeHOUbgDN0VZ1Hy6kVxg4XX3CChRWdj08
         VpV5/kKTppw0lvQAkNhvycLJCbLOT1GNSbxllYo9AW1bE5PBe+zc8JiUZ9ZAzjqucfqo
         MpsJtYEqctocVY+eKzWXXkXGhUIJD6ZzE2XJRRk/aAAdF2gAL4tHZWQIaVZoS0TBiTjX
         3ua6Z7e9IUPQfwmpEBGQJGVnDlgoT4EBymsBlgRCs49vUpHuVQp9NR71lxNWAx/UoVAR
         tqVbpw3PRQsC085u7RDMSfFy6dLFn/CS9UAl1zVx4TH10ml5SPi1MkNI7pwmtHoyD4cN
         O5fA==
X-Gm-Message-State: AOAM533EPNFfaHQlW7hgbmEamt7Gzf2OU9Mp3xxdfFz0Adn7pop0BwOW
        fbJuSBfBnHLLccDVPlTdGlayACkh/gyFrtAxDTQ=
X-Google-Smtp-Source: ABdhPJzzbxDr8c/bXSesdc3fa1B9HHsB4D7/EBYgJjYMGSNV8utwDkEqeyQCYwc/3RmHTzC+/JKzrsR/rnbXIXk7ktY=
X-Received: by 2002:a54:4094:: with SMTP id i20mr9170854oii.159.1627253927897;
 Sun, 25 Jul 2021 15:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170844.GA16696@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170844.GA16696@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 00:58:36 +0200
Message-ID: <CAKgNAkiuPrqBvoFv-11SAxfEfvRvqLP-yvOA7sKBkr60PreJ=g@mail.gmail.com>
Subject: Re: Errors in man pages, here: rename.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Helge

> Man page: rename.2
> Issue: So far, the manpage does not mention a variable I<pathname>
>
> "The directory containing I<oldpath> has the sticky bit (B<S_ISVTX>)  set and "
> "the process's effective user ID is neither the user ID of the file to be "
> "deleted nor that of the directory containing it, and the process is not "
> "privileged (Linux: does not have the B<CAP_FOWNER> capability); or "
> "I<newpath> is an existing file and the directory containing it has the "
> "sticky bit set and the process's effective user ID is neither the user ID of "
> "the file to be replaced nor that of the directory containing it, and the "
> "process is not privileged (Linux: does not have the B<CAP_FOWNER> "
> "capability); or the filesystem containing I<pathname> does not support "
> "renaming of the type requested."

Wow. That bug has been present for 28 years (since the page was first
added in 1993)!

s/pathname/oldpath/

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
