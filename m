Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21B9475DD39
	for <lists+linux-man@lfdr.de>; Sat, 22 Jul 2023 17:32:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbjGVPcH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Jul 2023 11:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229914AbjGVPcG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Jul 2023 11:32:06 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ADB9180;
        Sat, 22 Jul 2023 08:32:05 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-583b0637c04so11554067b3.1;
        Sat, 22 Jul 2023 08:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690039925; x=1690644725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xbpV6zrUHG8SdjGolBGW4dWv/S5zkyyPWk5MkCluUbo=;
        b=RpPgAF1lhWexMTysOBzurLtSzdzy+xM+jbHOz83ohbaB7h60L1/zct2DptEO66+Xq6
         sYGf6vjbzu7rwmz8wfskwygY/fm7372NR32ioVu9c8t6hc02EGdMIaprav5gGZtJjr7F
         N6kEyd5Q+Via0DZDmNQaDmD9yXLKvx0qNjVUS+wDgz5VhOgwJPOP7qk4h9vY8bfpqAtl
         Q9iBzz4W4G2zNpcy+9tBnr93DRQBDnvoFtJNMdZ7ztDDhXejDlK8CyQi3edlWXPt5+Uf
         tVEzXQGwaU+UHE4iNx0MZbR35cgvGOk/SIUo0oZZySpbOGWouudloF9GuR48bwrY8VHV
         h4kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690039925; x=1690644725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xbpV6zrUHG8SdjGolBGW4dWv/S5zkyyPWk5MkCluUbo=;
        b=PbrJn2zY8G348ad3qMo0RQfRVl8zJFD0hIC+WUlvm1CQOgsOOrwhbjVIXKCp4g1zzI
         mryoowL9DBaJNha1zNxSVz+U2hf7enGKz54bRD63nlsPI7PDH9MjMnHYOBMPlVQFxgDL
         lNFqNzqfDNnzLBHgKc1SjhRYzVe9x2V8f+Q6ubSmVCGz1AKVhr81PjounVd1YzysgPzq
         8wx4WMaSCT+2LztYHBvlt26vX6LhJInK92ldvqZmC38z68fb7klN6qLwxg30rni11JVG
         PKw4RKCAewaFAIcGiq8OdkahAjhwFLkdRHVWoHzs3x8iD6p4iXVhmvaSOP/gDchBjxFT
         UhnA==
X-Gm-Message-State: ABy/qLZXe1sqeVGMbLfPWtsRB39cCMCQUywqgKzmD3hDczzxxuuyqVNS
        3azJlVU/hsXPkr94eIMtBJCF9qaopIWILA==
X-Google-Smtp-Source: APBJJlEB74OxIodsmCzM9hVWD8Gg4T50Xi8Elz9dTJYoBt9R3uCxrzPnTXf3p/kG0BIXbQpCRuaGNA==
X-Received: by 2002:a81:52cd:0:b0:583:9935:b8ba with SMTP id g196-20020a8152cd000000b005839935b8bamr2237867ywb.6.1690039924711;
        Sat, 22 Jul 2023 08:32:04 -0700 (PDT)
Received: from firmament.home.arpa (c-73-106-204-164.hsd1.ga.comcast.net. [73.106.204.164])
        by smtp.gmail.com with ESMTPSA id n7-20020a0de407000000b005773babc3cdsm1635300ywe.83.2023.07.22.08.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jul 2023 08:32:04 -0700 (PDT)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Askar Safin <safinaskar@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        netdev@vger.kernel.org
Subject: Re: shutdown(2) is underdocumented
Date:   Sat, 22 Jul 2023 11:30:55 -0400
Message-ID: <20230722153131.1156360-1-mattlloydhouse@gmail.com>
In-Reply-To: <CAPnZJGCoHfwngQe5B1PgZ6kO7UK+GU7+G4vfVXxNpBZ6n-nB2g@mail.gmail.com>
References: <CAPnZJGCoHfwngQe5B1PgZ6kO7UK+GU7+G4vfVXxNpBZ6n-nB2g@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Jul 22, 2023 at 8:40 AM Askar Safin <safinaskar@gmail.com> wrote:
> shutdown(2) is underdocumented. Here is a lot of more details on
> shutdown(2): https://github.com/WebAssembly/WASI/issues/547 . I
> discovered them by experiment. So, please, document them
>
> --
> Askar Safin

Documenting the asymmetry is probably a good idea: the TCP protocol only
defines the equivalent of shutdown(SHUT_WR) and shutdown(SHUT_RDWR), and
there's no natural equivalent of a shutdown(SHUT_RD), so I don't think the
semantics themselves can easily be made more symmetric.

To expand, the current behavior, where shutdown(SHUT_RD) by itself silently
drops incoming data received before a shutdown(SHUT_WR), but replies with a
RST to data received after a shutdown(SHUT_WR), is definitely pretty weird,
even looking at the relevant RFCs. tcp_rcv_state_process() in
net/ipv4/tcp_input.c implements this behavior: a RST is sent back if and
only if the connection is in the FIN-WAIT-1, FIN-WAIT-2, CLOSE-WAIT,
CLOSING, or LAST-ACK state (i.e., not in the ESTABLISHED state), data is
received on the socket, and shutdown(SHUT_RD) has previously been called.
The logic is accompanied by the comment:

/*
 * RFC 793 says to queue data in these states,
 * RFC 1122 says we MUST send a reset.
 * BSD 4.4 also does reset.
 */

Looking at RFC 793 Section 3.5, it defines the CLOSE operation in a
"simplex fashion": a FIN is sent and further SENDs are no longer allowed,
but RECEIVEs are allowed until a FIN is sent from the remote host. This
clearly corresponds to the shutdown(SHUT_WR) operation, so it doesn't
appear to define any particular behavior for shutdown(SHUT_RD).

Instead, the entire justification for this behavior lies in RFC 1122
Section 4.2.2.13:

> A host MAY implement a "half-duplex" TCP close sequence, so
> that an application that has called CLOSE cannot continue to
> read data from the connection.  If such a host issues a
> CLOSE call while received data is still pending in TCP, or
> if new data is received after CLOSE is called, its TCP
> SHOULD send a RST to show that data was lost.

And in its Discussion:

> Some systems have not implemented half-closed
> connections, presumably because they do not fit into
> the I/O model of their particular operating system.  On
> these systems, once an application has called CLOSE, it
> can no longer read input data from the connection; this
> is referred to as a "half-duplex" TCP close sequence.

First off, this isn't a MUST but a SHOULD; I don't know where that idea
came from. Second off, we reach a bit of a conflict (IMO) between the
wording and intent of this clause. It defines the RST behavior only
following a CLOSE operation by the application, and a CLOSE still always
implies a shutdown(SHUT_WR). So at best, by a strict interpretation, the
application can be given a choice between shutdown(SHUT_WR) and
shutdown(SHUT_RDWR). Thus, Linux doesn't send any RSTs until after a
shutdown(SHUT_WR).

However, the whole point here is "to show that data was lost", and silently
dropping incoming data prior to a shutdown(SHUT_WR) is clearly contrary to
this goal. Clearly, a RST isn't very nice to either host, but neither is
lost data. So it seems at least defensible for a TCP implementation to
unconditionally reply with a RST to data received after a
shutdown(SHUT_RD). (As far as I know, this wouldn't break TCP itself from
the remote host's end, since it allows hosts to send a RST whenever they
feel like it. Higher-level protocols might be unhappy with it, though.)

But of course, the current behavior is ancient, dating back to
Linux 2.3.41pre2 from 2000. (Before then, a RST would only be sent after a
full close(2).) So there's no changing it at this point in Linux, at least
not without an explicit option. I do wonder if there are any other OSes
that have a shutdown(SHUT_RD) with different behavior, though.

Matthew House
