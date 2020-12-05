Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7EC72CFAF7
	for <lists+linux-man@lfdr.de>; Sat,  5 Dec 2020 11:18:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728986AbgLEKOh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Dec 2020 05:14:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726923AbgLEKNS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Dec 2020 05:13:18 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 412D4C061A4F;
        Sat,  5 Dec 2020 02:12:32 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id x13so281045oto.8;
        Sat, 05 Dec 2020 02:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=sU9Zy/VwoaDpyMvEvpQON/h2yR97yY+OQyznHQnhddw=;
        b=OSM5SOe8VeusaFdAfhH9vHHHAXLjbGydMB0AX5QJKGlPc9VTKeNGFOUHxrWdw9wE8E
         7gRC4zAVj4WVLvX1KmhcjCw6j3ctSiXSzvVfMlgcLPpTlVG1WaRu4nRckWapE+a5TaTT
         FOBUCmHjyUYpKGSoxAj/MoHsBzmmxPNAekiUe3fE35sSTfykswCpM3ff6WaAf+3zgrJ5
         kapaEBr0rZSXYDbvZrAmctZBHuci/sYZUXDbLQW89a3MbpNe9Ex0/Elb5wcnQTHE0wwU
         2SqOlho6kfVC1a86H1K1f21J8gW05+5ps5H7Np68NZSv3cNGf50+Az4fFyqK7WYh3qHI
         3nyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=sU9Zy/VwoaDpyMvEvpQON/h2yR97yY+OQyznHQnhddw=;
        b=qcBCUARAK7Hw+j1/1wfTrI/AAeAJMCac3If9i2cc16lhwq7ApCiOLCFuRt8iV9j3RD
         IwqorGOjAOKCpqUhLCARCJxbFlHHP8FXXzSRzejWzYLWF3ufm3sghnRshoHxLlMiOhFE
         fuYZrGtH/o+wYs+Fy9zaLuKBOMFcPWo4BCod0rnhTXFnpVQvpjnlIK/qA6Qk1aQlUHD6
         1hQ8o57mORGRZloIX2C0oDHBQRjp/PJzGvfrB3cPd0gfkGyA/XdSVWXadjIirALkAY0q
         rZxw1rjJivin/WfCzAHcnDPdAazGcUAHsw4edOr6wR6nGQAHjPchH0NHMuA4Fz7Qplqp
         /98w==
X-Gm-Message-State: AOAM532e5CFfKxBHO1/DDKTQUFp3d7Z6no63/lxLYnkWdUmEG67Jpq6p
        cqyN8ozAQLmiUtqIPWRVGNg9sCG0LnRdUAImh6YZ3HhUhgYAXA==
X-Google-Smtp-Source: ABdhPJyH2KiZB8uftlA1xQcbQeNz7nzZvbTEr7jitfgp9pwr4Xa0CMKsYLyGq7Ujj/WGx4LqT+dkgxtmm43+LzDgvOo=
X-Received: by 2002:a9d:590c:: with SMTP id t12mr6563298oth.308.1607163151114;
 Sat, 05 Dec 2020 02:12:31 -0800 (PST)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 5 Dec 2020 11:12:20 +0100
Message-ID: <CAKgNAkiNEBAKb9QG+CMtKW224htLNVnvdiyum2APD1uVD4tWuA@mail.gmail.com>
Subject: Linux man-pages maintainership adjustments
To:     linux-man <linux-man@vger.kernel.org>
Cc:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        lkml <linux-kernel@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        base-system@gentoo.org, Tobias Quathamer <toddy@debian.org>,
        Petr Gajdos <pgajdos@suse.cz>, ro@suse.de,
        jchaloup <jchaloup@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday,

Anyone following linux-man@ in the last few months will
have noticed that Alejandro (Alex) Colomar has become
rather active in the project. Alex has kindly volunteered
to take up some of the work of maintaining the project.
In practice, that means he will be reviewing and merging
some of the patches that land on linux-man@ and I'll be
taking those changes from him to then push to
git.kernel.org.

After 16 years as maintainer, I'm very happy that Alex
has come along to help out. And to be clear, I'm not
planning to step away from the project any time soon,
but maybe one day I will return to being just a
contributor and no longer the maintainer.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
