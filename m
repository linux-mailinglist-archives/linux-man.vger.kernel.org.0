Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C826531F655
	for <lists+linux-man@lfdr.de>; Fri, 19 Feb 2021 10:13:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229979AbhBSJMU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 04:12:20 -0500
Received: from mx01-sz.bfs.de ([194.94.69.67]:51468 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230175AbhBSJKE (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 19 Feb 2021 04:10:04 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id D88A420454;
        Fri, 19 Feb 2021 10:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1613725754;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=gD9clq1RhIHcTl1+npqVI8YoTtXGxKcuHj2UuJKk82s=;
        b=Ms7trEuHtcTULJJBeLct33j68UTMWlP7YFw883bFscsexM60zhOhYjWwGtoSgiPsHszTC5
        vb2wQdy9kEfW5bRUUTjrt1DQZ0BOAChFBe+LGeNCvMUqZ25sFGsTVW4fUayGVw5Wybt6U6
        2Nw7ns8/rS4RCPYXEPqAiQBK9glbOnIjsU4lKQl73GClQ5yNFOO6gEXhuonGqjWoY+jQg5
        vjumG6tKFf4Of1aRX589arly/cgi/x3sscyBJOwbnW7nDfhuhLtcqncTzc8HGpeHy0XgWo
        AMrp4k5OI7p1nQlqVFJEKYvJ7PwwT/9KPQpnVWuL1W10AvZnPjV1kIpiP91SiQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Fri, 19 Feb
 2021 10:09:13 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.002; Fri, 19 Feb 2021 10:09:13 +0100
From:   Walter Harms <wharms@bfs.de>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: AW: error.3: What happens if status = 0
Thread-Topic: error.3: What happens if status = 0
Thread-Index: AQHXBkELbYLgDrLV1UOn8hCzaDwOoKpfLIJf
Date:   Fri, 19 Feb 2021 09:09:13 +0000
Message-ID: <9c7d3296e4894ec3b118f0f130c51415@bfs.de>
References: <089a65d2-3dec-b9c1-8c8d-dddcd28f756b@gmail.com>
In-Reply-To: <089a65d2-3dec-b9c1-8c8d-dddcd28f756b@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25982.006
x-tm-as-result: No-10--2.521500-5.000000
x-tmase-matchedrid: RlE/Xlx8wK/RubRCcrbc5grcxrzwsv5u3dCmvEa6IiHgYNP0+4v1nmlF
        7OhYLlctfSwuXrI4PUnA1tegkciQsLqUgEs+NGTpqhcdnP91eXEgT/sXtGXrf2OMyb1Ixq8VdCx
        f9jqOU4kvfxnNWrygoh25G5lqIJ1lc+LFVihfXGO6iJsmkdGsWQZyESFXAljfB0L0/Ut7x1B6UF
        EXTHP4r9bgXPMuaDFx1GSB9fBBdJHsZfRzVSVqXJN65fjGjYMQJVMDC8M9UM+S7LGb+QFg+aPFj
        JEFr+olSXhbxZVQ5H+OhzOa6g8KrV3agBHfYkRwuBooW0SRvcXlaR33E3KaXFHQG0CNSoqv4UV1
        6LVWLriUOipL7gD9FaUKgkJTIAoMcCdUq9EJ6JnT5LZzCQFMQCis9jscQpKczRtC/fI/GzL62iq
        v7ym1n2PqXSKGf39K1Zv3zS/4qbM=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--2.521500-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25982.006
x-tm-snts-smtp: 849669DB9FD14FF360E2CE4200F583E1BF6478AA8376E5DBC7BC96AE2AA7F1062000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=0.30
X-Spamd-Result: default: False [0.30 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         TO_DN_SOME(0.00)[];
         BAYES_HAM(-1.20)[89.14%];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         SUSPICIOUS_RECIPS(1.50)[]
Authentication-Results: mx01-sz.bfs.de;
        none
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,
yes, error(0,...) is a bit like warn(), it returns to the programm.

That supports what my man page says:

" If  status has a nonzero value, then error() calls exit(3) to terminate
       the program using the given value as the exit status."

may be you want an add on like:

"Otherwise error() returns."

re,
 wh
________________________________________
Von: Alejandro Colomar (man-pages) <alx.manpages@gmail.com>
Gesendet: Donnerstag, 18. Februar 2021 22:55:13
An: Michael Kerrisk (man-pages)
Cc: linux-man@vger.kernel.org; libc-alpha@sourceware.org
Betreff: error.3: What happens if status =3D 0

Hi Michael,

I think it's not quite clear what happens when status =3D 0; for
error[_at_line](3) from the text of the manual page.  From the glibc
documentation[1], it seems that error(0, ...) is similar to warn(...),
isn't it?

Thanks,

Alex

[1]:
<https://www.gnu.org/software/libc/manual/html_node/Error-Messages.html#Err=
or-Messages>

--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
