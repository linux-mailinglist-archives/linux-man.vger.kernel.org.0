Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 310DF7DE231
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 15:14:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344082AbjKAOHZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 10:07:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344165AbjKAOHW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 10:07:22 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E857A10C
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 07:07:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000214E4.0000000065425A64.000FAD27; Wed, 01 Nov 2023 14:02:12 +0000
Date:   Wed, 1 Nov 2023 14:02:12 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page readlink.2
Message-ID: <ZUJaZIaqGk23UECp@meinfjell.helgefjelltest.de>
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

Issue:    the link target → link target

"#include E<lt>limits.hE<gt>\n"
"#include E<lt>stdio.hE<gt>\n"
"#include E<lt>stdlib.hE<gt>\n"
"#include E<lt>sys/stat.hE<gt>\n"
"#include E<lt>unistd.hE<gt>\n"
"\\&\n"
"int\n"
"main(int argc, char *argv[])\n"
"{\n"
"    char         *buf;\n"
"    ssize_t      nbytes, bufsiz;\n"
"    struct stat  sb;\n"
"\\&\n"
"    if (argc != 2) {\n"
"        fprintf(stderr, \"Usage: %s E<lt>pathnameE<gt>\\en\", argv[0]);\n"
"        exit(EXIT_FAILURE);\n"
"    }\n"
"\\&\n"
"    if (lstat(argv[1], &sb) == -1) {\n"
"        perror(\"lstat\");\n"
"        exit(EXIT_FAILURE);\n"
"    }\n"
"\\&\n"
"    /* Add one to the link size, so that we can determine whether\n"
"       the buffer returned by readlink() was truncated. */\n"
"\\&\n"
"    bufsiz = sb.st_size + 1;\n"
"\\&\n"
"    /* Some magic symlinks under (for example) /proc and /sys\n"
"       report \\[aq]st_size\\[aq] as zero. In that case, take PATH_MAX as\n"
"       a \"good enough\" estimate. */\n"
"\\&\n"
"    if (sb.st_size == 0)\n"
"        bufsiz = PATH_MAX;\n"
"\\&\n"
"    buf = malloc(bufsiz);\n"
"    if (buf == NULL) {\n"
"        perror(\"malloc\");\n"
"        exit(EXIT_FAILURE);\n"
"    }\n"
"\\&\n"
"    nbytes = readlink(argv[1], buf, bufsiz);\n"
"    if (nbytes == -1) {\n"
"        perror(\"readlink\");\n"
"        exit(EXIT_FAILURE);\n"
"    }\n"
"\\&\n"
"    /* Print only \\[aq]nbytes\\[aq] of \\[aq]buf\\[aq], as it doesn't contain a terminating\n"
"       null byte (\\[aq]\\e0\\[aq]). */\n"
"    printf(\"\\[aq]%s\\[aq] points to \\[aq]%.*s\\[aq]\\en\", argv[1], (int) nbytes, buf);\n"
"\\&\n"
"    /* If the return value was equal to the buffer size, then the\n"
"       the link target was larger than expected (perhaps because the\n"
"       target was changed between the call to lstat() and the call to\n"
"       readlink()). Warn the user that the returned target may have\n"
"       been truncated. */\n"
"\\&\n"
"    if (nbytes == bufsiz)\n"
"        printf(\"(Returned buffer may have been truncated)\\en\");\n"
"\\&\n"
"    free(buf);\n"
"    exit(EXIT_SUCCESS);\n"
"}\n"
