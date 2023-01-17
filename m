Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7D0B66E64A
	for <lists+linux-man@lfdr.de>; Tue, 17 Jan 2023 19:43:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231950AbjAQSnO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Jan 2023 13:43:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232608AbjAQScS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Jan 2023 13:32:18 -0500
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BE3241B72
        for <linux-man@vger.kernel.org>; Tue, 17 Jan 2023 10:04:11 -0800 (PST)
Received: by mail-oo1-xc2f.google.com with SMTP id d16-20020a4a5210000000b004f23d1aea58so4388080oob.3
        for <linux-man@vger.kernel.org>; Tue, 17 Jan 2023 10:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cvzEDQmPvMAP7PKqE7zzoQpzT4CiAyklkGQgAYqxHRk=;
        b=QeywlLZ76kqUtlWPs3FhHA9qwJSy3XehdGePR2g9OnC1Z5R3TFsg1winAxdOeid62h
         mLshx3sCmNxlgZC6uhlpo+Fa+Dh0dpx10OULxn/hhqI08Upwv1F9p0qHln4dJXM2h4fw
         R6kKqbN030pY9VT/SOwMjUi+9X4G4zHNWT8sBxxpF1Ewr60hJqhchuBtXHBRELAxz8jI
         Rz2IFMmhC7OembWLgnNKNXsnd3KkCTIWPH0uOkybAAvVns2WiigeB4eEC6G+7dGmuSdK
         Qe+zpiB3SH8Gd/vroJF9S8FkS9WJYNY4CifZBk8556FatZ3IerD4Xfp9/je5DgcE7mNT
         BJfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cvzEDQmPvMAP7PKqE7zzoQpzT4CiAyklkGQgAYqxHRk=;
        b=OTxj3kNiZ0M5v0G+z6MTST/dwao3PMKgMUBbdHwQ5j0Q+K4BCbefVBXFrhTFzNyP+p
         lJ7i5hIcEicav4hhYwLWJVA+o1FvBQNBuDBjRweSA91qvpenGRsGzmni/Ez4rjm/lq88
         a1pZMmNUJcRFPQDorxj9ATFj57MhLgNqB32bxy6FV1guwEx2H/XDd5JhH/hIviuEQj3M
         wAo0+SG5GKXbH+6XPAp6c30ENqVvZ58zlvFZcIvLu2ZDd0YYJblXRSywLUWqEEg0HOjw
         plYxmnq4Hts+oLeYSI+NmEWKdT0KIu+u3s0Ax6i+Hv4OkV3bT2QtgAZW6q49mdYn65ay
         H18A==
X-Gm-Message-State: AFqh2koCc6DnCzDRd0D0jWEj6xwwbVgq9k+so2oityaef00PbMeryH+n
        c0lwe9535c+gaAojp0Dd0iiUW0rUcghalg==
X-Google-Smtp-Source: AMrXdXtGgylhMBZqG9KpczJ7kvgx5D9sQwhsHym7/NmNiAYuXVJ/CGi7Sy1Bd+d+90l6FDU1DS+ybQ==
X-Received: by 2002:a4a:8c6e:0:b0:4fa:325e:ebb0 with SMTP id v43-20020a4a8c6e000000b004fa325eebb0mr788385ooj.5.1673978650110;
        Tue, 17 Jan 2023 10:04:10 -0800 (PST)
Received: from instant-on1.fyre.ibm.com ([129.41.87.2])
        by smtp.gmail.com with ESMTPSA id r4-20020a4aad04000000b004a394578e14sm15281873oon.32.2023.01.17.10.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 10:04:09 -0800 (PST)
From:   Younes Manton <younes.m@gmail.com>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Younes Manton <younes.m@gmail.com>
Subject: [PATCH] proc.5: Fix caps needed to read map_files contents
Date:   Tue, 17 Jan 2023 10:03:36 -0800
Message-Id: <20230117180336.352611-1-younes.m@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

imachug@yandex.ru testing CRIU noticed that the documentation for
proc's map_files directory with respect to CAP_CHECKPOINT_RESTORE and
namespaces appears to be wrong. The text reads:

> since Linux 5.9, the reading process must have
> either CAP_SYS_ADMIN or CAP_CHECKPOINT_RESTORE in the user
> namespace where it resides.

The reporter noted that the user actually needs the capabilities in
the initial user namespace, not in the namespace the process resides
in. As far as I can tell this appears to be the case.

The text was introduced in 167f94b707148bcd46fe39c7d4ebfada9eed88f6
and refers to kernel commit 12886f8ab10ce6a09af1d92535d49c81aaa215a8.

The code and message in the kernel commit refer to the initial user namespace.

An example program and shell session verifying the existing behaviour
follows:

$ uname -r
5.15.0-52-generic

$ ./test.sh
+ make rmf
cc rmf.c -o rmf
+ sudo setcap cap_checkpoint_restore-eip ./rmf
+ ./rmf
19582: =
Can't read map_files/ entry: Operation not permitted
+ sudo setcap cap_checkpoint_restore+eip ./rmf
+ ./rmf
19588: cap_checkpoint_restore=ep
+ unshare --user ./rmf
19591: cap_checkpoint_restore=ep
Can't read map_files/ entry: Operation not permitted

$ cat rmf.c

int main(int argc, char **argv)
{
    DIR *mfd;
    struct dirent *mfe;
    struct stat mfstat;
    int ret;

    system("getpcaps $PPID");

    chdir("/proc/self/map_files");
    mfd = opendir(".");
    do {
        mfe = readdir(mfd);
    } while (!strcmp(mfe->d_name, ".") || !strcmp(mfe->d_name, ".."));
    if (ret = stat(mfe->d_name, &mfstat))
        perror("Can't read map_files/ entry");
    closedir(mfd);

    return ret;
}

Signed-off-by: Younes Manton <younes.m@gmail.com>
---
 man5/proc.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 1217cea89..981310562 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1267,7 +1267,7 @@ since Linux 5.9, the reading process must have either
 .B CAP_SYS_ADMIN
 or
 .B CAP_CHECKPOINT_RESTORE
-in the user namespace where it resides.
+in the initial (i.e. root) user namespace.
 .TP
 .IR /proc/ pid /maps
 A file containing the currently mapped memory regions and their access
-- 
2.34.1

