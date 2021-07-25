Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A71483D4FEF
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229661AbhGYT65 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 15:58:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhGYT65 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 15:58:57 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 205E1C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:39:27 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 48-20020a9d0bb30000b02904cd671b911bso8032253oth.1
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=zz3RzFF+h+fqwPNkNpswvNhqqVMzCJRBa0Rd/Sd6/1U=;
        b=kdGrqWwo8jcjR6mI4pfXUKoydCEAh0FKtPHW3npAB7mnmxbG4jSGpDnCmcu/4rK3nW
         GEdV5SZDqelqw34Bq9i47YzN40aVlSCQNWdBIwUHkOqK5NziN43SdMVqzzFsX0ePYbR/
         bX28S8MCcx2M6V3dzgQjYCsriKqkODMhvzSVwB/tm4phN/VJV81Lw0Iuhyrgmm8Zx+my
         y0kAw/W+6piTXURZf2tpS6zOYbVzMEZ5zLwPTzl1E/u2y2nXi4u2ThBjTg+YKRDZd1WT
         todRIeP5xkhqu+5AE49cO1ZVjg/opXX7+RBHaPudxPq86zUr4wjsQSFF+y+tYWWtu6Uf
         hy+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=zz3RzFF+h+fqwPNkNpswvNhqqVMzCJRBa0Rd/Sd6/1U=;
        b=BIqBFZ5aWqz9q6fLFa7E5wwiv7DH9kdIONIWuhdoclcUPo/hxFk7+Pd7Zt/KDZ/1li
         F4mMBWaNvV2jdeo4AC6dAV6ysVzuy7vfDDN16+q5l7x+LDUG4jdJT90HZOHaC3c33MBO
         m7yNWTdgtGrxamHIbhND2B2CuZXqMTM+4Sp9KgzyGJ9IcX3/IafIpXIasCNqfSDbMzKw
         NFGq81P4lCY1KG3IQ5vjHnWFfvLEkn7esOO+g4r8Dt2AoxRhMfRlo9O4ribIh6Ld1Mam
         U2V4wgZhxirKxCiXXXlxKReuwXfezp9HFBW3JGmnR3UNcrWJ+HHtcE8xfu193XPxx3G0
         jL+Q==
X-Gm-Message-State: AOAM530HzxGeR7mPcD8kXBF2X/4zDTCtKJJlDPDRiPj9HsxjWmVF8BHR
        W3y8x9BkmY2H7zeSMyxSgUpQ3L2Ia1JjI3NawOI=
X-Google-Smtp-Source: ABdhPJxLFgff9bMPHHVKktbiisrqfPFSdIMtzx9NvAys5Bi6hX6GUIaJZt3BoLCD63QCtF0VprLgVATJ2Gk1fdulfM8=
X-Received: by 2002:a9d:3a49:: with SMTP id j67mr10390221otc.114.1627245566526;
 Sun, 25 Jul 2021 13:39:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210725171045.GA16990@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725171045.GA16990@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:39:15 +0200
Message-ID: <CAKgNAkiu8mWtOw9nZthYAqaCoRMnQU6uYn5M_+RafGs80VAZUQ@mail.gmail.com>
Subject: Re: Errors in man pages, here: uri.7
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Helo Helge,

> Man page: uri.7
> Issue: Gopher selector string =E2=86=92 Gopher type selector string?

Offhand, I do not know... Maybe someone else will comment. I've made
no change so far.

Thanks,

Michael

> "I<selector> is the Gopher selector string.  In the Gopher protocol, Goph=
er "
> "selector strings are a sequence of octets which may contain any octets "
> "except 09 hexadecimal (US-ASCII HT or tab), 0A hexadecimal (US-ASCII "
> "character LF), and 0D (US-ASCII character CR)."
>
> --
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
