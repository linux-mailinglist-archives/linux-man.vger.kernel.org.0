Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 747237DE213
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 15:14:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344232AbjKAOHW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 10:07:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235554AbjKAOHT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 10:07:19 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B34D83
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 07:07:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021323.0000000065425A63.000FACDE; Wed, 01 Nov 2023 14:02:11 +0000
Date:   Wed, 1 Nov 2023 14:02:11 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page nfsservctl.2
Message-ID: <ZUJaY4vT3lwVt9mq@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    mountd(8) → B<mountd>(8)
"/*\n"
" * These are the commands understood by nfsctl().\n"
" */\n"
"#define NFSCTL_SVC        0  /* This is a server process. */\n"
"#define NFSCTL_ADDCLIENT  1  /* Add an NFS client. */\n"
"#define NFSCTL_DELCLIENT  2  /* Remove an NFS client. */\n"
"#define NFSCTL_EXPORT     3  /* Export a filesystem. */\n"
"#define NFSCTL_UNEXPORT   4  /* Unexport a filesystem. */\n"
"#define NFSCTL_UGIDUPDATE 5  /* Update a client\\[aq]s UID/GID map\n"
"                                (only in Linux 2.4.x and earlier). */\n"
"#define NFSCTL_GETFH      6  /* Get a file handle (used by mountd(8))\n"
"                                (only in Linux 2.4.x and earlier). */\n"
"\\&\n"
"struct nfsctl_arg {\n"
"    int                       ca_version;     /* safeguard */\n"
"    union {\n"
"        struct nfsctl_svc     u_svc;\n"
"        struct nfsctl_client  u_client;\n"
"        struct nfsctl_export  u_export;\n"
"        struct nfsctl_uidmap  u_umap;\n"
"        struct nfsctl_fhparm  u_getfh;\n"
"        unsigned int          u_debug;\n"
"    } u;\n"
"}\n"
"\\&\n"
"union nfsctl_res {\n"
"        struct knfs_fh          cr_getfh;\n"
"        unsigned int            cr_debug;\n"
"};\n"
