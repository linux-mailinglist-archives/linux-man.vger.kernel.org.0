Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1343F48F6B4
	for <lists+linux-man@lfdr.de>; Sat, 15 Jan 2022 13:24:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbiAOMYX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jan 2022 07:24:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbiAOMYV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jan 2022 07:24:21 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A95CBC061574
        for <linux-man@vger.kernel.org>; Sat, 15 Jan 2022 04:24:21 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id c3so15444566pls.5
        for <linux-man@vger.kernel.org>; Sat, 15 Jan 2022 04:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=KTwWT2UpvKh+C2XP+FfnVBBeS1ThNsB5O88RJ3hF2Y8=;
        b=HNVhSLoSeIr4wTOxVb4D1wGc6dVmDeJZ+ICpS27K1PQaY8+cCBAYCQ9Ghsnw2VkV7x
         TBhAmPqNjRs05h/lutC60IakLlkT+9QHUgW3whpXLBHg4ts5TyeF6QyIYqQWxigXTiN5
         QPCd0cdTOnDTzy4Mqt5ih3zsIo94SlBsAR9vVQMJc62KwxOWDRrlpFexJjquJ4PsrSZA
         mDyaxH+A7kgvnsuXYpN+0lr3muBYt89ekuMn3Nr+8MAiH2NMvvvPxaxRKLHPCp8wqstO
         P6/glEV0ZnsjYyOtF2pOb/aIZmKNBOJ8VvobXDBOkgSQRDiKyORgBXFvSYRwLseoen5S
         GkwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=KTwWT2UpvKh+C2XP+FfnVBBeS1ThNsB5O88RJ3hF2Y8=;
        b=70RLAFsIbo5p5Jj5itvNdSmQ+sVolllO35l+24/ZmjKRpsnicj6fuN1/CYGIXVbfMT
         fxlG5+9Z/9DC/icP09+w2Az8QBTMlvBXdhy+Jd/p0Ki1cgcL+bQ8S06WagEAjn85GmiL
         rrUGoWb8o0O35WP1AkiZffBduaJJ3smU/Bf0gdLoHo+OB48iNrfYBcOb9zeV4tCfdGCg
         xk4eLMoeTUb2GiHINQ56MySP0nTnk9tOGDQj9Els02kbbSDe5MnWXhAlTtj1j4HOHXoR
         vHUPw1BHkjhOq1gLTFy4pW2EibLGoyfjnzHfSm6XKD+4j4scgcsAoUizQPhdh45ZfTCS
         f+5g==
X-Gm-Message-State: AOAM532rjjfFqmlWLbKwXbtdZSFw2PETJShrEYU5ErE7+6n+yM/Tjglg
        a9zn8NOwgNMfNFIq9lzNVaTH2q0ZZxOPySLe/5HmOT/FvMc=
X-Google-Smtp-Source: ABdhPJw3JqNawb1iLGE/XTBBRQZqD7Fds9TNN1l7XYJhy8BuUdtHDkvtyECd0fLC/8TckafIva89meYCrAQs96+qhTw=
X-Received: by 2002:a17:90a:2f66:: with SMTP id s93mr5356835pjd.62.1642249461068;
 Sat, 15 Jan 2022 04:24:21 -0800 (PST)
MIME-Version: 1.0
From:   =?UTF-8?Q?Jo=C3=A3o_Sampaio?= <jpmelos@gmail.com>
Date:   Sat, 15 Jan 2022 09:23:45 -0300
Message-ID: <CAO_YKa1+A+G-HazuXpepsAqa4CkmQFCWQs+zwSpYo11zuzvLCQ@mail.gmail.com>
Subject: Possible bug in `tcp(7)` regarding `TCP_USER_TIMEOUT`
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

The manpage for TCP (`man 7 tcp`, [1]) reads, in the paragraphs about
`TCP_USER_TIMEOUT`:

[1] https://man7.org/linux/man-pages/man7/tcp.7.html

```
This option can be set during any state of a TCP
connection, but is effective only during the synchronized
states of a connection (ESTABLISHED, FIN-WAIT-1, FIN-
WAIT-2, CLOSE-WAIT, CLOSING, and LAST-ACK).
```

When I read that, I understand that that option should only apply to
established TCP connections, and should not apply when trying to
establish a TCP connection.

I wrote a simple program to test that:

```
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>

// We'll skip error-checking since this is just for testing purposes.

void do_connect(int with_tcp_user_timeout) {
    struct addrinfo hint;
    struct addrinfo *ai;
    int sock;
    time_t start;
    time_t end;
    unsigned int timeout =3D 10000;

    memset(&hint, 0, sizeof(hint));
    hint.ai_family =3D AF_INET;
    hint.ai_socktype =3D SOCK_STREAM;
    hint.ai_protocol =3D IPPROTO_TCP;
    getaddrinfo("10.0.42.16", "5432", &hint, &ai);

    sock =3D socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
    if (with_tcp_user_timeout) {
        setsockopt(
            sock, IPPROTO_TCP, TCP_USER_TIMEOUT, &timeout,
            sizeof(timeout)
        );
    }

    printf(
        "Attempting to connect, with_user_tcp_timeout =3D %d... ",
        with_tcp_user_timeout
    );
    fflush(stdout);

    start =3D time(NULL);
    connect(sock, ai->ai_addr, ai->ai_addrlen);
    end =3D time(NULL);
    printf("Done!\n");

    freeaddrinfo(ai);

    printf(
        "with_tcp_user_timeout =3D %d, took %ld seconds\n",
        with_tcp_user_timeout, end - start
    );
}

int main(void) {
    // Let's connect with TCP_USER_TIMEOUT first for faster useful
    // first data.
    do_connect(1);
    do_connect(0);

    exit(EXIT_SUCCESS);
}
```

This program gives me the following output:

```
$ gcc main.c -Wall -Wextra -Werror && ./a.out
Attempting to connect, with_user_tcp_timeout =3D 1... Done!
with_tcp_user_timeout =3D 1, took 10 seconds
Attempting to connect, with_user_tcp_timeout =3D 0... Done!
with_tcp_user_timeout =3D 0, took 130 seconds
```

So it seems like that option does apply when trying to establish a
connection! This above output was obtained with Linux 5.15.8 and gcc
9.3.0.

Am I reading the manpage wrong, or is the manpage wrong? Or is this
just an "undocumented behavior" that shouldn't be relied on and can
be removed without warning in future releases?

Thanks,
Jo=C3=A3o Sampaio
