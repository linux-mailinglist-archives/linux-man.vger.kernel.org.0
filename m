Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7869C343C0F
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 09:49:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229890AbhCVIs7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 04:48:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbhCVIse (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 04:48:34 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE8BC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 01:48:34 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id o16so15752663wrn.0
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 01:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:organization:mime-version;
        bh=Sx8uCU09ZY7LZaxp8SKavj6rBrF10PAYgPMkUrvL+/A=;
        b=ISvEXHW5dSl9UH8+BGAFqvrBxRcLWYXh3/LlkB06bOK09hzXVIZTS/Gr4HNgp0ebdV
         P7ADIX0GV+ojIrTDPOpatSF2prgjoj6CmBAjtjp1CKcfcKuFqtIRyhyJ1XC/hOsj9rrv
         i+8Aq+SmA6hcKMyW1R5qE5IXHYi9iE3pbd74BqDg1YfeWiJH2rJpT4fAI46tBqdZxvz5
         CiJalh6jUGta0LXo8chz5Ud/NgpqU2ZMwKhkAWqA662gbATfuxUjZnwdUL8zZgT8mt+A
         2eXgMNz9HuMrGcsp6X1SDFF0kiRhObFt8tzzvOIsvbRaJ+Ib2Tc6Hbe4TW2yjgWc+yxU
         4AIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:organization
         :mime-version;
        bh=Sx8uCU09ZY7LZaxp8SKavj6rBrF10PAYgPMkUrvL+/A=;
        b=VSFbrclHgyrD1p5FP7jlu91Ilv/KrD14L4erGK+wMqpOy3PzZCYv8Yw6FH8TTj8m08
         vvXyA7FYS7Q+dvGPGCxhJUhOLboAxqj1J8rRfQLPvZixOhc8ZzzCS/z5BcAoMRXSxzLc
         1O2/0uXrime73R/qJrtB8PsiJ7eHO+THRamZWrUulGlfwITs0JxJiTw2Espf0rRWZ9C5
         WfSszckJul0jYCgAwe/gDfQEI2DAWh+pOCy2LnNUmC8WX583uq2T8XhpXmi9hinexA30
         UILsnAXASdhjs/+F5ZHFAT7ekODNEhD2gIDIzTstQdAcPqP5BB+kugXTuuvWKKRrFycm
         uqPg==
X-Gm-Message-State: AOAM530JpbzMBUY7PNlDQOllWAnbl3rixcBybeoVgR+wvKrj6+PZxAY6
        7zStPNTOqXjw2p0iRI0yGkg=
X-Google-Smtp-Source: ABdhPJyCSAGjTNIUCbyNyACiOxa5qM7A2fHzOQ+fdGkf9UnRwptioQ1J00w4dfyutK/frzaAEToLgQ==
X-Received: by 2002:a5d:5906:: with SMTP id v6mr17194634wrd.137.1616402912743;
        Mon, 22 Mar 2021 01:48:32 -0700 (PDT)
Received: from opensuse.localnet (ipbcc14380.dynamic.kabel-deutschland.de. [188.193.67.128])
        by smtp.gmail.com with ESMTPSA id l9sm14887001wmq.2.2021.03.22.01.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 01:48:31 -0700 (PDT)
From:   =?utf-8?B?U3rFkXRzIMOBa29z?= <szotsaki@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     alx.manpages@gmail.com, linux-man@vger.kernel.org
Subject: /proc/<pid>/stat file documentation
Date:   Mon, 22 Mar 2021 09:48:30 +0100
Message-ID: <2836850.zfUPAMbaDK@opensuse>
Organization: MorroHun Team
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4422994.DVKcslHcio"; micalg="pgp-sha256"; protocol="application/pgp-signature"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart4422994.DVKcslHcio
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: =?utf-8?B?U3rFkXRzIMOBa29z?= <szotsaki@gmail.com>
To: mtk.manpages@gmail.com
Cc: alx.manpages@gmail.com, linux-man@vger.kernel.org
Subject: /proc/<pid>/stat file documentation
Date: Mon, 22 Mar 2021 09:48:01 +0100
Message-ID: <2836850.zfUPAMbaDK@opensuse>
Organization: MorroHun Team

Dear Michael,

I found a documentation deficiency on [1] in /proc/<pid>/stat file (Table=20
1-4). May I ask you to indicate in this table that ESP and EIP have non-zer=
o=20
values only when the process is exiting or dumping core and the calling=20
process has the permission for PTRACE_MODE_READ_FSCREDS | PTRACE_MODE_NOAUD=
IT.=20
=46or implementation reference see [2].

Please, also note that for many of the reported numbers in this table the=20
aforementioned permissions are needed to be displayed correctly (as non-
zeroes). They are start_code, end_code, start_stack, esp, eip, wchan,=20
start_data, end_data, start_brk, arg_start, arg_end, env_start, env_end, an=
d=20
exit_code.

A small addition: I also observed that on [3] the "blog" points to 404.

Thank you and all the best,

=C3=81kos

[1]: https://www.kernel.org/doc/html/latest/filesystems/proc.html
[2]: https://github.com/torvalds/linux/blob/master/fs/proc/array.c#L481-L502
[3]: https://www.kernel.org/doc/man-pages/maintaining.html
--nextPart4422994.DVKcslHcio
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIHnWdYg0ffXHT9oxRbyAIRvwdy8FAmBYWcEACgkQRbyAIRvw
dy/73g/8CubQSwPEzONl03SgkXAKMKBPVLVKgMivXQZSsfZ/izezIrNE1imEZ8kh
uI92JPEEiH7sPa7R4keNOuzWNyb0H6Nt5Z1M2FjfUVmwEmFLd1mel6gE/XRuLfY+
5SoAwK4BU8/0eBcK7XGqf3Z61EXWe5cS1ajFdn/iv8LqwkFnGTqHnctQPXzuOmTU
A4mMcmpgJjVi562tyzLyLWIq423d835WnHigK4y058ZZmEYZFt+EhFP40yBM1maK
RsQ8wsMT2M6P4WzHk8Xlg8MsccK4CmCVAaI3AkjmAAAyveAyjN9Ls3JSTfqQpHvH
S3honbMFjIt5V6UYYrA9lzPaxkuCOk/PuW+G7GiaBuJMGhlmoozl951Gkent/bsa
GGAHZ3EwMt+ktHHLTk2xqhgCFndAiWWU4L+x0gPvoEkVtFOfjIvIasrJZnogziGY
tFCNhdCjOPxANfj1JDjKAqSvrsHbnNM9maAyRZzEylnx+qSsoQiajehwHMFhLiLc
zRr/Ql0glGij2opf5IkiH0jY2S4slUz3RWsdQvL82n4UayHTXa7MfjYR9qhGlAfg
kn5hTJSdpZTVhYY/8Yz2+D4F1jPpG3/Ew/Ash+R5tsYpFqrfbuypSKZ61GEXGHJt
0JUsXDK/4A+FZ3mxgmfGcB7182DrjEuM6wo+2mnRX+Fw5U3+rT8=
=X7U0
-----END PGP SIGNATURE-----

--nextPart4422994.DVKcslHcio--



