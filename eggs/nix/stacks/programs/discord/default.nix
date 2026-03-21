{ inputs, hostname, ... }:

let
  inherit (import ../../../hosts/${hostname}/variables.nix) username;
in
{
  imports = [ inputs.nixcord.nixosModules.nixcord ];
  programs.nixcord = {
    enable = true;
    user = username;
    quickCss = "/* code goes here */";
    config = {
      enableReactDevtools = false;
      autoUpdate = false;
      autoUpdateNotification = false;
      disableMinSize = false;
      frameless = false;
      notifyAboutUpdates = false;
      transparent = false;
      useQuickCss = false;

      # Appearance
      enabledThemes = [ ];
      themeLinks = [
        "https://raw.githubusercontent.com/Dyzean/Tokyo-Night/main/themes/tokyo-night.theme.css"
      ];
      themes = { };

      # Plugin configurations
      plugins = {
        accountPanelServerProfile = {
          enable = false;
          prioritizeServerProfile = false;
        };
        altKrispSwitch = {
          enable = false;
        };
        alwaysAnimate = {
          enable = false;
          icons = true;
          nameplates = true;
          roleGradients = true;
          serverBanners = true;
          statusEmojis = true;
        };
        alwaysExpandProfiles = {
          enable = false;
        };
        alwaysExpandRoles = {
          enable = false;
          hideArrow = false;
        };
        alwaysTrust = {
          enable = false;
          confirmModal = true;
          domain = true;
          file = true;
          noDeleteSafety = true;
        };
        animalese = {
          enable = false;
          messageLengthLimit = 50;
          pitch = 1.0;
          processOwnMessages = true;
          soundQuality = "high";
          speed = 1.0;
          volume = 0.5;
        };
        anonymiseFileNames = {
          enable = false;
          anonymiseByDefault = true;
          consistent = "image";
          method = 0;
          randomisedLength = 7;
          spoilerMessages = false;
        };
        appleMusicRichPresence = {
          enable = false;
          enableButtons = true;
          enableTimestamps = true;
          activityType = 0;
          detailsString = "{name}";
          largeImageType = "Album";
          largeTextString = "{album}";
          nameString = "Apple Music";
          refreshInterval = 5.0;
          smallImageType = "Artist";
          smallTextString = "{artist}";
          stateString = "{artist} · {album}";
          statusDisplayType = "off";
        };
        atSomeone = {
          enable = false;
        };
        AutoDNDWhilePlaying = {
          enable = false;
          excludeInvisible = false;
          statusToSet = "dnd";
        };
        autoZipper = {
          enable = false;
          extensions = ".psd,.blend,.exe,.dmg,.app,.apk,.iso";
        };
        bannersEverywhere = {
          enable = false;
          animate = false;
          preferNameplate = false;
        };
        betterActivities = {
          enable = false;
          allActivitiesStyle = "carousel";
          hideTooltip = true;
          iconSize = 15.0;
          memberList = true;
          removeGameActivityStatus = false;
          renderGifs = true;
          specialFirst = true;
          userPopout = true;
        };
        betterAudioPlayer = {
          enable = false;
          forceMoveBelow = true;
          oscilloscope = true;
          oscilloscopeColor = "255, 255, 255";
          oscilloscopeSolidColor = false;
          spectrograph = true;
          spectrographColor = "33, 150, 243";
          spectrographSolidColor = false;
        };
        betterBanReasons = {
          enable = false;
          isTextInputDefault = false;
          reasons = [ ];
        };
        betterBlockedUsers = {
          enable = false;
        };
        betterCommands = {
          enable = false;
          allowNewlinesInCommands = true;
          autoFillArguments = true;
        };
        betterFolders = {
          enable = false;
          closeAllFolders = false;
          closeAllHomeButton = false;
          closeOthers = false;
          closeServerFolder = false;
          forceOpen = false;
          keepIcons = false;
          showFolderIcon = 1;
          sidebar = true;
          sidebarAnim = true;
        };
        betterGifAltText = {
          enable = false;
        };
        betterGifPicker = {
          enable = false;
          keepOpen = false;
        };
        betterInvites = {
          enable = false;
        };
        betterNotesBox = {
          enable = false;
          hide = false;
          noSpellCheck = false;
        };
        betterPlusReacts = {
          enable = false;
        };
        betterRoleContext = {
          enable = false;
          roleIconFileFormat = "png";
        };
        betterRoleDot = {
          enable = false;
          bothStyles = false;
          copyRoleColorInProfilePopout = false;
        };
        betterSessions = {
          enable = false;
          backgroundCheck = false;
          checkInterval = 20;
        };
        betterSettings = {
          enable = true;
          disableFade = true;
          eagerLoad = true;
          organizeMenu = true;
        };
        betterUploadButton = {
          enable = false;
        };
        biggerStreamPreview = {
          enable = false;
        };
        blockKeywords = {
          enable = false;
          blockedWords = "";
          caseSensitive = false;
          ignoreBlockedMessages = true;
          useRegex = false;
        };
        blockKrisp = {
          enable = false;
        };
        BlurNSFW = {
          enable = false;
          blurAllChannels = false;
          blurAmount = 10;
        };
        bypassPinPrompt = {
          enable = false;
        };
        bypassStatus = {
          enable = false;
          allowOutsideOfDms = false;
          channels = "";
          guilds = "";
          notificationSound = true;
          respectSilentPings = true;
          statusToUse = "dnd";
          users = "";
        };
        callTimer = {
          enable = false;
          allCallTimers = false;
          format = "stopwatch";
          showRoleColor = false;
          showSeconds = false;
          showWithoutHover = false;
          trackSelf = false;
          watchLargeGuilds = false;
        };
        channelBadges = {
          enable = false;
          oneBadgePerChannel = false;
        };
        channelTabs = {
          enable = false;
        };
        characterCounter = {
          enable = false;
          colorEffects = true;
        };
        cleanChannelName = {
          enable = false;
        };
        cleanerChannelGroups = {
          enable = false;
        };
        ClearURLs = {
          enable = true;
        };
        clickableRoles = {
          enable = false;
        };
        clientSideBlock = {
          enable = false;
          blockedReplyDisplay = "displayText";
          guildBlackList = "";
          guildWhiteList = "";
          hideBlockedMessages = true;
          hideBlockedUsers = true;
          hideEmptyRoles = true;
          hideVc = false;
          usersToBlock = "";
        };
        clientTheme = {
          enable = false;
          color = "313338";
        };
        clipsEnhancements = {
          enable = false;
          enableAdvancedSignals = true;
          enableScreenshotKeybind = true;
          enableVoiceOnlyClips = true;
          ignorePlatformRestriction = true;
          richPresenceTagging = "whenMatched";
        };
        colorSighted = {
          enable = false;
        };
        commandPalette = {
          enable = false;
          enableTagFilter = true;
          hotkey = { };
          showTags = true;
          visualStyle = "classic";
        };
        components = {
          enable = false;
        };
        consoleJanitor = {
          enable = true;
          allowLevel = {
            debug = false;
            error = true;
            info = false;
            log = false;
            trace = false;
            warn = false;
          };
          disableLoggers = false;
          disableSpotifyLogger = true;
          whitelistedLoggers = "GatewaySocket; Routing/Utils";
        };
        consoleShortcuts = {
          enable = false;
        };
        contentWarning = {
          enable = false;
          onClick = false;
        };
        copyEmojiMarkdown = {
          enable = false;
          copyUnicode = true;
        };
        copyFileContents = {
          enable = false;
        };
        copyProfileColors = {
          enable = false;
        };
        copyStatusUrls = {
          enable = false;
        };
        copyStickerLinks = {
          enable = false;
        };
        copyUserMention = {
          enable = false;
        };
        CopyUserURLs = {
          enable = false;
        };
        crashHandler = {
          enable = true;
          attemptToNavigateToHome = false;
          attemptToPreventCrashes = true;
        };
        ctrlEnterSend = {
          enable = false;
          sendMessageInTheMiddleOfACodeBlock = true;
          submitRule = "ctrl+enter";
        };
        customFolderIcons = {
          enable = false;
          solidIcon = false;
        };
        customIdle = {
          enable = false;
          idleTimeout = 10.0;
          remainInIdle = true;
        };
        customSounds = {
          enable = false;
        };
        customTimestamps = {
          enable = false;
        };
        customUserColors = {
          enable = false;
          colorInServers = true;
          dmList = true;
        };
        CustomRPC = {
          enable = false;
        };
        dearrow = {
          enable = false;
          dearrowByDefault = true;
          hideButton = false;
          replaceElements = 0;
        };
        declutter = {
          enable = false;
          alwaysShowUsername = true;
          removeAudioMenus = true;
          removeBillingSettings = true;
          removeButtonTooltips = false;
          removeClanTag = true;
          removeGiftButton = true;
          removeNameplate = true;
          removeProfileEffect = true;
          removeQuestsAboveDM = false;
          removeServerBoostInfo = true;
          removeShopAboveDM = false;
          removeUnavailableEmojiPicker = true;
        };
        decodeBase64 = {
          enable = false;
          clickMethod = "Left";
        };
        decor = {
          enable = false;
          agreedToGuidelines = false;
          baseUrl = "https://decor.fieryflames.dev";
        };
        devCompanion = {
          enable = false;
          notifyOnAutoConnect = true;
          reloadAfterToggle = true;
          usePatchedModule = true;
        };
        disableCallIdle = {
          enable = false;
        };
        disableCameras = {
          enable = false;
        };
        disableDeepLinks = {
          enable = false;
        };
        discordDevBanner = {
          enable = false;
        };
        dontRoundMyTimestamps = {
          enable = false;
        };
        dragFavoriteEmotes = {
          enable = false;
        };
        dragify = {
          enable = false;
          allowChatBodyDrop = false;
          channelOutput = "mention";
          inviteExpireAfter = 0;
          inviteMaxUses = 0;
          inviteTemporaryMembership = false;
          reuseExistingInvites = false;
          userOutput = "mention";
        };
        elementHighlighter = {
          enable = false;
          keybind = [ ];
          showBorderRadius = false;
          showClasses = false;
          showDisplay = false;
          showFont = false;
          showId = false;
          showMargin = false;
          showPadding = false;
          showPosition = false;
        };
        equicordHelper = {
          enable = false;
          accountStandingButton = false;
          forceRoleIcon = false;
          noBulletPoints = false;
          noMirroredCamera = false;
          noModalAnimation = false;
          refreshSlashCommands = false;
          removeActivitySection = false;
          restoreFileDownloadButton = false;
          showYourOwnActivityButtons = false;
        };
        equicordToolbox = {
          enable = false;
          showPluginMenu = true;
        };
        equissant = {
          enable = false;
          amount = 10;
        };
        exitSounds = {
          enable = false;
        };
        experiments = {
          enable = false;
          toolbarDevMenu = false;
        };
        exportMessages = {
          enable = false;
          exportContacts = false;
          openFileAfterExport = true;
        };
        expressionCloner = {
          enable = false;
        };
        f8Break = {
          enable = false;
        };
        fakeNitro = {
          enable = false;
          enableEmojiBypass = true;
          enableStickerBypass = true;
          enableStreamQualityBypass = true;
          disableEmbedPermissionCheck = false;
          emojiSize = 48.0;
          hyperLinkText = "{{NAME}}";
          stickerSize = 160.0;
          transformCompoundSentence = false;
          transformEmojis = true;
          transformStickers = true;
          useEmojiHyperLinks = true;
          useStickerHyperLinks = true;
        };
        fakeProfileThemes = {
          enable = false;
          nitroFirst = true;
        };
        fastDeleteChannels = {
          enable = false;
          keyBind = "KeyZ";
          reqAlt = false;
          reqCtrl = true;
          reqShift = true;
        };
        favoriteEmojiFirst = {
          enable = false;
        };
        favoriteGifSearch = {
          enable = false;
          searchOption = "hostandpath";
        };
        favouriteAnything = {
          enable = false;
        };
        fileUpload = {
          enable = false;
          apngToGif = false;
          autoCopy = true;
          catboxUserhash = "";
          ezHostKey = "";
          folderId = "";
          litterboxExpiry = "24h";
          nestToken = "";
          s3AccessKeyId = "";
          s3Bucket = "";
          s3Endpoint = "";
          s3ForcePathStyle = true;
          s3Prefix = "";
          s3PublicUrl = "";
          s3Region = "auto";
          s3SecretAccessKey = "";
          s3SessionToken = "";
          serviceType = "zipline";
          serviceUrl = "";
          sharexConfig = "";
          stripQueryParams = false;
          ziplineToken = "";
        };
        findReply = {
          enable = false;
          hideButtonIfNoReply = true;
          includeAuthor = false;
          includePings = false;
        };
        fixCodeblockGap = {
          enable = false;
        };
        fixFileExtensions = {
          enable = false;
        };
        fixImagesQuality = {
          enable = false;
          originalImagesInChat = false;
        };
        fixSpotifyEmbeds = {
          enable = false;
          volume = 10.0;
        };
        fixYoutubeEmbeds = {
          enable = false;
          youtubeDescription = false;
        };
        followVoiceUser = {
          enable = false;
          leaveWhenUserLeaves = false;
          onlyWhenInVoice = true;
        };
        fontLoader = {
          enable = false;
          applyOnCodeBlocks = false;
          selectedFont = "";
        };
        forceOwnerCrown = {
          enable = false;
        };
        forwardAnywhere = {
          enable = false;
          forwardPreface = ">";
        };
        frequentQuickSwitcher = {
          enable = false;
        };
        friendCodes = {
          enable = false;
        };
        friendInvites = {
          enable = false;
        };
        friendTags = {
          enable = false;
        };
        friendsSince = {
          enable = false;
        };
        friendshipRanks = {
          enable = false;
        };
        fullSearchContext = {
          enable = false;
        };
        fullUserInChatbox = {
          enable = false;
        };
        FullVCPFP = {
          enable = false;
          useServerProfileAvatars = false;
        };
        gameActivityToggle = {
          enable = false;
          location = "PANEL";
          oldIcon = false;
        };
        ghosted = {
          enable = false;
          exemptedChannels = "";
          ignoreBots = true;
          ignoreGroupDms = false;
          maxInactiveTimeMs = 0;
          showDmIcons = true;
          showIndicator = true;
        };
        gifCollections = {
          enable = false;
          collectionPrefix = "gc:";
          collectionsSortOrder = "asc";
          collectionsSortType = 1;
          defaultEmptyCollectionImage = "https://c.tenor.com/YEG33HsLEaIAAAAC/parksandrec-oops.gif";
          itemPrefix = "gc-item:";
          onlyShowCollections = false;
          preventDuplicates = false;
          showCopyImageLink = false;
          stopWarnings = false;
        };
        gifPaste = {
          enable = false;
        };
        gitHubRepos = {
          enable = false;
          showInMiniProfile = true;
          showLanguage = true;
          showRepositoryTab = true;
          showStars = true;
        };
        globalBadges = {
          enable = false;
          apiUrl = "https://badges.equicord.org/";
          showAero = true;
          showAliucord = true;
          showCustom = true;
          showEnmity = true;
          showNekocord = true;
          showPaicord = true;
          showPrefix = true;
          showRaincord = true;
          showReviewDB = true;
          showSuffix = false;
          showVelocity = true;
        };
        googleThat = {
          enable = false;
          customEngineURL = null;
          defaultEngine = "Google";
          embed = true;
          hyperlink = false;
        };
        greetStickerPicker = {
          enable = false;
          greetMode = "Greet";
        };
        guildPickerDumper = {
          enable = false;
        };
        guildTagSettings = {
          enable = false;
          disableAdoptTagPrompt = true;
          hideTags = false;
        };
        hideChatButtons = {
          enable = false;
          color = false;
          open = false;
        };
        hideMedia = {
          enable = false;
        };
        hideMessages = {
          enable = false;
          hidePopoverButton = false;
        };
        hideServers = {
          enable = false;
          showIndicator = true;
        };
        holyNotes = {
          enable = false;
        };
        homeTyping = {
          enable = false;
        };
        hopOn = {
          enable = false;
          regex = "hop on (?:fortnite|fn)";
          url = "com.epicgames.launcher://apps/fn%3A4fe75bbc5a674f4f9b356b5c90567da5%3AFortnite?action=launch&silent=true";
        };
        husk = {
          enable = false;
          emojiID = 1026532993923293184;
          emojiName = "husk";
          findInServer = true;
        };
        iLoveSpam = {
          enable = false;
        };
        iconViewer = {
          enable = false;
        };
        idleAutoRestart = {
          enable = false;
          idleMinutes = 30.0;
          isEnabled = true;
        };
        ignoreActivities = {
          enable = false;
          idsList = "";
          ignoreCompeting = false;
          ignoreListening = false;
          ignorePlaying = false;
          ignoreStreaming = false;
          ignoreWatching = false;
          ignoredActivities = { };
          listMode = 0;
        };
        ignoreCalls = {
          enable = false;
          permanentlyIgnoredUsers = "";
        };
        imageFilename = {
          enable = false;
          showFullUrl = false;
        };
        imageLink = {
          enable = false;
        };
        imageZoom = {
          enable = false;
          invertScroll = true;
          nearestNeighbour = false;
          saveZoomValues = true;
          size = 100.0;
          square = false;
          zoom = 2.0;
          zoomSpeed = 0.5;
        };
        implicitRelationships = {
          enable = false;
          sortByAffinity = true;
        };
        inRole = {
          enable = false;
        };
        ingtoninator = {
          enable = false;
          isEnabled = true;
          showIcon = true;
        };
        instantScreenshare = {
          enable = false;
        };
        invisibleChat = {
          enable = false;
          savedPasswords = "password, Password";
        };
        inviteDefaults = {
          enable = false;
          inviteDuration = 0;
          maxUses = 0;
          temporaryMembership = false;
        };
        IRememberYou = {
          enable = false;
        };
        ircColors = {
          enable = false;
          applyColorOnlyInDms = false;
          applyColorOnlyToUsersWithoutColor = false;
          lightness = 70;
          memberListColors = true;
        };
        jumpTo = {
          enable = false;
        };
        jumpscare = {
          enable = false;
          audioSource = "https://github.com/Equicord/Equibored/raw/main/sounds/jumpscare/trollolol.mp3?raw=true";
          chance = 1000;
          imageSource = "https://github.com/Equicord/Equibored/blob/main/icons/jumpscare/troll.gif?raw=true";
        };
        keepCurrentChannel = {
          enable = false;
        };
        keyboardNavigation = {
          enable = false;
          allowMouseControl = true;
          hotkey = [
            "Control"
            "Shift"
            "P"
          ];
        };
        keyboardSounds = {
          enable = false;
          soundPack = "operagx";
          volume = 100.0;
        };
        keywordNotify = {
          enable = false;
          amountToKeep = 50;
          ignoreBots = true;
        };
        lastActive = {
          enable = false;
        };
        loadingQuotes = {
          enable = false;
          enableDiscordPresetQuotes = false;
          enablePluginPresetQuotes = true;
          additionalQuotes = "";
          additionalQuotesDelimiter = "|";
          replaceEvents = true;
        };
        LoginWithQR = {
          enable = false;
        };
        mediaPlaybackSpeed = {
          enable = false;
          defaultAudioSpeed = 1.0;
          defaultVideoSpeed = 1.0;
          defaultVoiceMessageSpeed = 1.0;
        };
        memberCount = {
          enable = false;
          memberList = true;
          toolTip = true;
          voiceActivity = true;
        };
        mentionAvatars = {
          enable = false;
          showAtSymbol = true;
        };
        messageBurst = {
          enable = false;
          shouldMergeWithAttachment = false;
          timePeriod = 3;
          useSpace = false;
        };
        messageClickActions = {
          enable = false;
          enableDeleteOnClick = true;
          enableDoubleClickToEdit = true;
          enableDoubleClickToReply = true;
          addAdditionalReacts = false;
          additionalReactEmojis = "";
          clickTimeout = 300;
          deferDoubleClickForTriple = false;
          disableInDms = false;
          disableInSystemDms = true;
          doubleClickAction = "EDIT";
          doubleClickHoldThreshold = 150;
          doubleClickModifier = "NONE";
          doubleClickOthersAction = "REPLY";
          quoteWithReply = true;
          reactEmoji = "💀";
          requireModifier = false;
          selectionHoldTimeout = 300;
          singleClickAction = "DELETE";
          singleClickModifier = "BACKSPACE";
          singleClickOthersAction = "DELETE";
          singleClickOthersModifier = "BACKSPACE";
          tripleClickAction = "REACT";
          tripleClickModifier = "NONE";
          useSelectionForQuote = false;
        };
        messageColors = {
          enable = false;
        };
        messageFetchTimer = {
          enable = false;
          iconColor = "#00d166";
          showIcon = true;
          showMs = true;
        };
        messageLatency = {
          enable = false;
          detectDiscordKotlin = true;
          ignoreSelf = false;
          latency = 2;
          showMillis = false;
        };
        messageLinkEmbeds = {
          enable = false;
          automodEmbeds = "never";
          idList = "";
          listMode = "blacklist";
          messageBackgroundColor = false;
        };
        messageLinkTooltip = {
          enable = false;
          display = "auto";
          onForward = true;
          onLink = true;
          onReply = true;
        };
        messageLogger = {
          enable = true;
          collapseDeleted = false;
          deleteStyle = "text";
          ignoreBots = false;
          ignoreChannels = "";
          ignoreGuilds = "";
          ignoreSelf = false;
          ignoreUsers = "";
          inlineEdits = true;
          logDeletes = true;
          logEdits = true;
          separatedDiffs = false;
          showEditDiffs = false;
        };
        messageLoggerEnhanced = {
          enable = false;
          alwaysLogCurrentChannel = true;
          alwaysLogDirectMessages = true;
          attachmentFileExtensions = "png,jpg,jpeg,gif,webp,mp4,webm,mp3,ogg,wav";
          attachmentSizeLimitInMegabytes = 12;
          blacklistedIds = "";
          cacheLimit = 1000;
          cacheMessagesFromServers = false;
          hideMessageFromMessageLoggers = false;
          hideMessageFromMessageLoggersDeletedMessage = "redacted eh";
          ignoreBots = false;
          ignoreMutedCategories = false;
          ignoreMutedChannels = false;
          ignoreMutedGuilds = false;
          ignoreSelf = false;
          ignoreWebhooks = false;
          messageLimit = 200;
          messagesToDisplayAtOnceInLogs = 100;
          permanentlyRemoveLogByDefault = false;
          preserveCurrentChannel = true;
          saveImages = false;
          saveMessages = true;
          showLogsButton = true;
          showWhereMessageIsFrom = false;
          sortNewest = true;
          timeBasedCleanupMinutes = 0;
          whitelistedIds = "";
        };
        messageNotifier = {
          enable = false;
          users = "";
        };
        messagePeek = {
          enable = false;
          hideMuted = false;
        };
        messageTags = {
          enable = false;
          clyde = true;
          tagsList = { };
        };
        messageTranslate = {
          enable = false;
          confidenceRequirement = "0.8";
          targetLanguage = "en";
        };
        micLoopbackTester = {
          enable = false;
        };
        middleClickTweaks = {
          enable = false;
          openScope = "none";
          pasteScope = "always";
          pasteThreshold = 100;
        };
        moreCommands = {
          enable = false;
        };
        moreQuickReactions = {
          enable = false;
          columns = 4.0;
          compactMode = false;
          frequentEmojis = true;
          reactionCount = 5;
          rows = 2.0;
          scroll = true;
        };
        moreStickers = {
          enable = false;
          promptToUpload = false;
        };
        moreUserTags = {
          enable = false;
          dontShowBotTag = false;
          dontShowForBots = false;
          noAppsAllowed = false;
          showWebhookTagFully = false;
        };
        moyai = {
          enable = false;
          ignoreBlocked = true;
          ignoreBots = true;
          quality = "Normal";
          triggerWhenUnfocused = true;
          volume = 0.5;
        };
        musicControls = {
          enable = false;
          fallbackProvider = true;
          hoverControls = false;
          lyricDelay = 0.0;
          lyricsConversion = "None";
          lyricsPosition = "below";
          lyricsProvider = "Spotify";
          previousButtonRestartsTrack = true;
          showFailedToasts = true;
          showMusicNoteOnNoLyrics = true;
          showSpotifyControls = false;
          showSpotifyLyrics = false;
          showTidalControls = false;
          showTidalLyrics = false;
          showYoutubeMusicControls = false;
          translateTo = null;
          useSpotifyUris = false;
          youtubeMusicApiUrl = "http://localhost:26538";
        };
        MutualGroupDMs = {
          enable = false;
        };
        neverPausePreviews = {
          enable = false;
        };
        newGuildSettings = {
          enable = false;
          events = true;
          everyone = true;
          guild = true;
          highlights = true;
          messages = 3;
          mobilePush = true;
          role = true;
          showAllChannels = true;
          voiceChannels = false;
        };
        newPluginsManager = {
          enable = false;
        };
        noBlockedMessages = {
          enable = false;
          allowAutoModMessages = true;
          alsoHideIgnoredUsers = true;
          applyToIgnoredUsers = true;
          defaultHideUsers = true;
          disableNotifications = false;
          hideBlockedUserReplies = false;
          ignoreMessages = false;
          overrideUsers = "";
        };
        noDevtoolsWarning = {
          enable = false;
        };
        noF1 = {
          enable = true;
        };
        noMaskedUrlPaste = {
          enable = false;
        };
        noMosaic = {
          enable = false;
          inlineVideo = true;
        };
        noNitroUpsell = {
          enable = false;
        };
        noOnboardingDelay = {
          enable = false;
        };
        noPendingCount = {
          enable = false;
          hideFriendRequestsCount = true;
          hideMessageRequestsCount = true;
          hidePremiumOffersCount = true;
        };
        noProfileThemes = {
          enable = false;
        };
        noPushToTalk = {
          enable = false;
        };
        noReplyMention = {
          enable = false;
          inverseShiftReply = false;
          roleList = "1234567890123445,1234567890123445";
          shouldPingListed = true;
          userList = "1234567890123445,1234567890123445";
        };
        noRoleHeaders = {
          enable = false;
        };
        NoRPC = {
          enable = false;
        };
        noServerEmojis = {
          enable = false;
          shownEmojis = "onlyUnicode";
        };
        noSystemBadge = {
          enable = false;
        };
        noTypingAnimation = {
          enable = false;
        };
        noUnblockToJump = {
          enable = false;
        };
        normalizeMessageLinks = {
          enable = false;
        };
        notificationTitle = {
          enable = false;
        };
        notificationVolume = {
          enable = false;
          notificationVolume = 100.0;
        };
        oneko = {
          enable = false;
        };
        OnePingPerDM = {
          enable = false;
          allowEveryone = false;
          allowMentions = false;
          alwaysPlaySound = false;
          channelToAffect = "both_dms";
          ignoreUsers = "";
        };
        openInApp = {
          enable = false;
        };
        orbolayBridge = {
          enable = false;
          isKeybindEnabled = true;
          messageAlignment = "topright";
          messagesSemitransparent = false;
          port = 6888;
          userAlignment = "topleft";
          voiceSemitransparent = true;
        };
        overrideForumDefaults = {
          enable = false;
          defaultLayout = 1;
          defaultSortOrder = 0;
        };
        partyMode = {
          enable = false;
          superIntensePartyMode = 0;
        };
        pauseInvitesForever = {
          enable = false;
        };
        permissionFreeWill = {
          enable = false;
          lockout = true;
          onboarding = true;
        };
        permissionsViewer = {
          enable = false;
          permissionsSortOrder = 0;
        };
        petpet = {
          enable = false;
        };
        pictureInPicture = {
          enable = false;
          loop = true;
        };
        pinIcon = {
          enable = false;
        };
        PinDMs = {
          enable = false;
          canCollapseDmSection = false;
          dmSectionCollapsed = false;
          pinOrder = 0;
          userBasedCategoryList = { };
        };
        pingNotifications = {
          enable = false;
          dms = true;
          friends = false;
          ignoreMuted = true;
          mentions = true;
          showInActive = false;
        };
        plainFolderIcon = {
          enable = false;
        };
        platformIndicators = {
          enable = false;
          colorMobileIndicator = true;
          consoleIcon = "equicord";
          list = true;
          messages = true;
          profiles = true;
          showBots = false;
        };
        platformSpoofer = {
          enable = false;
          platform = "desktop";
        };
        polishWording = {
          enable = false;
          blockedWords = "";
          expandContractions = false;
          fixApostrophes = true;
          fixCapitalization = false;
          fixPunctuation = false;
          fixPunctuationFrequency = 100.0;
          quickDisable = false;
        };
        previewMessage = {
          enable = false;
        };
        profileSets = {
          enable = false;
          avatarSize = 56.0;
        };
        questify = {
          enable = false;
        };
        questionMarkReplacement = {
          enable = false;
          replace = ":face_with_monocle:";
        };
        quickMention = {
          enable = false;
        };
        quickReply = {
          enable = false;
          ignoreBlockedAndIgnored = true;
          shouldMention = 2;
        };
        quickThemeSwitcher = {
          enable = false;
          autoRefresh = true;
          includeLocal = true;
          includeOnline = true;
          showNotifications = true;
          sortOrder = "alphabetical";
        };
        quoter = {
          enable = false;
          grayscale = true;
          quoteFont = "M PLUS Rounded 1c";
          saveAsGif = false;
          showWatermark = false;
          watermark = "Made with Equicord";
        };
        randomVoice = {
          enable = false;
          autoCamera = false;
          autoNavigate = false;
          autoStream = false;
          avoidAfk = false;
          avoidStages = false;
          avoidStates = false;
          deafen = false;
          includeStates = false;
          leaveEmpty = false;
          mute = false;
          selfDeafen = false;
          selfMute = false;
          servers = "";
          spacesLeft = 3.0;
          spacesLeftOperation = "==";
          stream = false;
          userAmount = 3.0;
          userAmountOperation = "==";
          vcLimit = 5.0;
          vcLimitOperation = "==";
          video = false;
        };
        reactErrorDecoder = {
          enable = false;
        };
        readAllNotificationsButton = {
          enable = false;
        };
        RecentDMSwitcher = {
          enable = false;
          amountOfUsers = 20.0;
          overlayMode = "row";
          overlayRowLength = 5.0;
          overlayShowAvatars = true;
          toastDurationMs = 600.0;
          visualStyle = "overlay";
        };
        relationshipNotifier = {
          enable = false;
          friendRequestCancels = true;
          friends = true;
          groups = true;
          notices = false;
          offlineRemovals = true;
          servers = true;
        };
        remixRevived = {
          enable = false;
        };
        repeatMessages = {
          enable = false;
        };
        replaceGoogleSearch = {
          enable = false;
          customEngineName = null;
          customEngineURL = null;
          replacementEngine = "off";
        };
        replyPingControl = {
          enable = false;
          alwaysPingOnReply = false;
          replyPingWhitelist = "";
        };
        replyTimestamp = {
          enable = false;
        };
        revealAllSpoilers = {
          enable = false;
        };
        reverseImageSearch = {
          enable = false;
        };
        ReviewDB = {
          enable = false;
          hideBlockedUsers = true;
          hideTimestamps = false;
          notifyReviews = true;
          showWarning = true;
        };
        richMagnetLinks = {
          enable = false;
        };
        richPresence = {
          enable = false;
        };
        roleColorEverywhere = {
          enable = false;
          chatMentions = true;
          colorChatMessages = false;
          memberList = true;
          messageSaturation = 30.0;
          pollResults = true;
          reactorsList = true;
          voiceUsers = true;
        };
        RPCEditor = {
          enable = false;
        };
        RPCStats = {
          enable = false;
          RPCTitle = "RPCStats";
          albumCoverImage = true;
          assetURL = "";
          lastFMApiKey = "";
          lastFMStatFormat = ''Top album this week: "$album - $artist"'';
          lastFMUsername = "";
          statDisplay = 0;
        };
        SaveFavoriteGIFs = {
          enable = false;
          showToolboxButton = true;
        };
        scheduledMessages = {
          enable = false;
          checkIntervalSeconds = 10.0;
          maxMessagesPerMinute = 3.0;
          showNotifications = true;
          showPhantomMessages = true;
        };
        screenRecorder = {
          enable = false;
        };
        searchFix = {
          enable = false;
        };
        secretRingToneEnabler = {
          enable = false;
          onlySnow = false;
        };
        sekaiStickers = {
          enable = false;
          autoCloseModal = true;
        };
        selfForward = {
          enable = false;
        };
        sendTimestamps = {
          enable = false;
          replaceMessageContents = true;
        };
        serverInfo = {
          enable = false;
          sorting = "displayname";
        };
        serverListIndicators = {
          enable = false;
          mode = 2;
          useCompact = false;
        };
        serverSearch = {
          enable = false;
        };
        shikiCodeblocks = {
          enable = false;
          bgOpacity = 100.0;
          customTheme = null;
          theme = null;
          tryHljs = "SECONDARY";
          useDevIcon = "GREYSCALE";
        };
        showAllMessageButtons = {
          enable = false;
          noShiftDelete = true;
          noShiftPin = true;
        };
        showBadgesInChat = {
          enable = false;
          discordNitroPosition = 7;
          discordProfilePosition = 6;
          equicordContributorPosition = 1;
          equicordDonorPosition = 0;
          showDiscordNitro = true;
          showDiscordProfile = true;
          showEquicordContributor = true;
          showEquicordDonor = true;
          showVencordContributor = true;
          showVencordDonor = true;
          vencordContributorPosition = 5;
          vencordDonorPosition = 4;
        };
        showConnections = {
          enable = false;
          iconSize = 32;
          iconSpacing = 1;
        };
        showHiddenChannels = {
          enable = false;
          channelStyle = 0;
          defaultAllowedUsersAndRolesDropdownState = true;
          hideUnreads = true;
          showMode = 0;
        };
        showHiddenThings = {
          enable = false;
        };
        showMeYourName = {
          enable = false;
          animateGradients = false;
          customNameColor = "Role-25";
          customNameOnlyInDirectMessages = false;
          discriminators = true;
          displayNameColor = "Role-25";
          displayNames = false;
          friendNameColor = "Role-25";
          friendNameOnlyInDirectMessages = false;
          friendNicknames = "dms";
          hideDefaultAtSign = false;
          ignoreFonts = false;
          ignoreGradients = true;
          inReplies = false;
          includedNames = "{custom, friend, nick} [{display}] (@{user})";
          memberList = true;
          mentions = true;
          messages = true;
          mode = "user-nick";
          nameSeparator = " ";
          nicknameColor = "Role-25";
          profilePopout = true;
          reactions = true;
          removeDuplicates = true;
          replies = true;
          triggerNameRerender = false;
          truncateAllNamesWithStreamerMode = true;
          typingIndicator = true;
          usernameColor = "Role-25";
          voiceChannels = true;
        };
        showMessageEmbeds = {
          enable = false;
        };
        showResourceChannels = {
          enable = false;
        };
        showSongName = {
          enable = false;
        };
        showTimeoutDuration = {
          enable = false;
          displayStyle = "ssalggnikool";
        };
        sidebarChat = {
          enable = false;
        };
        signature = {
          enable = false;
          contextMenu = true;
          isEnabled = true;
          name = "a chronic discord user";
          showIcon = true;
          textHeader = ">";
        };
        silentMessageToggle = {
          enable = false;
          autoDisable = true;
          persistState = "none";
        };
        silentTyping = {
          enable = false;
          enabledGlobally = true;
          enabledLocations = "";
          chatContextMenu = true;
          chatIcon = true;
          chatIconLeftClickAction = "channel";
          chatIconMiddleClickAction = "settings";
          chatIconRightClickAction = "global";
          contextMenu = true;
          defaultHidden = true;
          disabledLocations = "";
          hideChatBoxTypingIndicators = false;
          hideMembersListTypingIndicators = false;
          isEnabled = true;
          showIcon = false;
        };
        snowfall = {
          enable = false;
          flakesPerSecond = 5.0;
          maxSize = 30.0;
          speed = 50.0;
          typeOfSnow = "text";
        };
        soggy = {
          enable = false;
          boopLink = "https://github.com/Equicord/Equibored/raw/main/sounds/soggy/honk.wav?raw=true";
          boopVolume = 0.2;
          imageLink = "https://equicord.org/assets/plugins/soggy/cat.png";
          songLink = "https://github.com/Equicord/Equibored/raw/main/sounds/soggy/song.mp3?raw=true";
          songVolume = 0.25;
          tooltipText = "the soggy";
        };
        songLink = {
          enable = false;
          servicesSettings = { };
          userCountry = "US";
        };
        songSpotlight = {
          enable = false;
          collapseSongList = false;
          profileSongsLimit = 6.0;
        };
        sortFriendRequests = {
          enable = false;
          showDates = false;
        };
        sortFriends = {
          enable = false;
          showDates = false;
        };
        soundBoardLogger = {
          enable = false;
          fileType = ".ogg";
          soundVolume = 0.5;
        };
        splitLargeMessages = {
          enable = false;
          disableFileConversion = true;
          hardSplit = false;
          maxLength = 0;
          sendDelay = 1.0;
          slowmodeMax = 5;
          splitInSlowmode = false;
        };
        spotifyActivityToggle = {
          enable = false;
          location = "PANEL";
        };
        spotifyControls = {
          enable = false;
          hoverControls = false;
          previousButtonRestartsTrack = true;
          useSpotifyUris = false;
        };
        spotifyCrack = {
          enable = false;
          keepSpotifyActivityOnIdle = false;
          noSpotifyAutoPause = true;
        };
        spotifyShareCommands = {
          enable = false;
        };
        startupTimings = {
          enable = false;
        };
        statusPresets = {
          enable = false;
          statusPresets = { };
        };
        statusWhileActive = {
          enable = false;
          statusToSet = "dnd";
        };
        steamStatusSync = {
          enable = false;
          dndStatus = "none";
          goInvisibleIfActivityIsHidden = false;
          idleStatus = "away";
          invisibleStatus = "invisible";
          onlineStatus = "online";
        };
        stickerBlocker = {
          enable = false;
          blockedStickers = "";
          showButton = true;
          showGif = true;
          showMessage = false;
        };
        stickerPaste = {
          enable = false;
        };
        streamerModeOnStream = {
          enable = false;
        };
        streamingCodecDisabler = {
          enable = false;
          disableAv1Codec = false;
          disableH264Codec = false;
          disableH265Codec = false;
          disableVP8Codec = false;
          disableVP9Codec = false;
        };
        summaries = {
          enable = false;
          summaryExpiryThresholdDays = 3.0;
        };
        superReactionTweaks = {
          enable = false;
          superReactByDefault = true;
          superReactionPlayingLimit = 20.0;
          unlimitedSuperReactionPlaying = false;
        };
        talkInReverse = {
          enable = false;
        };
        textReplace = {
          enable = false;
          regexRules = [ ];
          stringRules = [ ];
        };
        themeAttributes = {
          enable = false;
        };
        themeLibrary = {
          enable = false;
        };
        tidalEmbeds = {
          enable = false;
        };
        TiktokTTS = {
          enable = false;
          volume = 50.0;
        };
        timezones = {
          enable = false;
          _24hTime = false;
          askedTimezone = false;
          databaseUrl = "https://timezone.creations.works";
          preferDatabaseOverLocal = true;
          showMessageHeaderTime = true;
          showOwnTimezone = true;
          showProfileTime = true;
          showTimezoneInfo = true;
          useDatabase = true;
        };
        title = {
          enable = false;
          title = "Equicord";
        };
        toastNotifications = {
          enable = false;
          determineServerNotifications = true;
          directMessages = true;
          disableInStreamerMode = true;
          friendActivity = true;
          friendServerNotifications = true;
          groupMessages = true;
          ignoreUsers = "";
          maxNotifications = 3.0;
          notifyFor = "";
          opacity = 100.0;
          position = "bottom-left";
          renderImages = true;
          streamingTreatment = 0;
          timeout = 5.0;
        };
        toggleVideoBind = {
          enable = false;
          keyBind = "KeyX";
          reqAlt = false;
          reqCtrl = true;
          reqShift = true;
        };
        toneIndicators = {
          enable = false;
          customIndicators = "";
          prefix = "/";
        };
        translate = {
          enable = false;
          autoTranslate = false;
          deeplApiKey = "";
          receivedInput = "auto";
          receivedOutput = "en";
          sentInput = "auto";
          sentOutput = "en";
          service = "google";
          shavian = true;
          showAutoTranslateTooltip = true;
          sitelen = true;
          target = "en";
          toki = true;
        };
        TriviaAI = {
          enable = false;
          apiKey = "";
          autoRespond = false;
          endpoint = "https://openrouter.ai/api/v1/chat/completions";
          maxTokens = 500;
          model = "google/gemini-3-flash-preview";
          supportImages = true;
          systemPrompt = "You are a helpful assistant who answers questions for the user in a concise and short way while using the least amount of words and punctuation.";
        };
        typingIndicator = {
          enable = false;
          includeBlockedUsers = false;
          includeCurrentChannel = true;
          includeIgnoredUsers = false;
          includeMutedChannels = false;
          indicatorMode = 3;
        };
        typingTweaks = {
          enable = false;
          alternativeFormatting = true;
          amITyping = false;
          showAvatars = true;
          showRoleColors = true;
        };
        unindent = {
          enable = false;
        };
        unitConverter = {
          enable = false;
          myUnits = "imperial";
        };
        universalMention = {
          enable = false;
          globalMention = false;
          onlyDMUsers = false;
        };
        unlimitedAccounts = {
          enable = false;
          maxAccounts = 0;
        };
        unlockedAvatarZoom = {
          enable = false;
          zoomMultiplier = 4.0;
        };
        unreadCountBadge = {
          enable = false;
          notificationCountLimit = false;
          showOnMutedChannels = false;
        };
        unsuppressEmbeds = {
          enable = false;
        };
        urlHighlighter = {
          enable = false;
          boldUrls = false;
          highlightEmbeds = false;
          patterns = { };
        };
        USRBG = {
          enable = false;
          nitroFirst = true;
          voiceBackground = true;
        };
        userMessagesPronouns = {
          enable = false;
          pronounsFormat = "LOWERCASE";
          showSelf = true;
        };
        UserPFP = {
          enable = false;
          databaseSource = "https://userpfp.github.io/UserPFP/source/data.json";
          overrideServerAvatars = true;
          preferNitro = true;
        };
        userVoiceShow = {
          enable = false;
          showInMemberList = true;
          showInMessages = true;
          showInUserProfileModal = true;
        };
        validReply = {
          enable = false;
        };
        validUser = {
          enable = false;
        };
        VCPanelSettings = {
          enable = false;
          camera = false;
          inputDevice = true;
          inputVolume = true;
          outputDevice = true;
          outputVolume = true;
          showInputDeviceHeader = false;
          showInputVolumeHeader = true;
          showOutputDeviceHeader = false;
          showOutputVolumeHeader = true;
          showVideoDeviceHeader = false;
          uncollapseSettingsByDefault = false;
        };
        vcNarrator = {
          enable = false;
          deafenMessage = "{{USER}} deafened";
          joinMessage = "{{USER}} joined";
          latinOnly = false;
          leaveMessage = "{{USER}} left";
          moveMessage = "{{USER}} moved to {{CHANNEL}}";
          muteMessage = "{{USER}} muted";
          rate = 1.0;
          sayOwnName = false;
          undeafenMessage = "{{USER}} undeafened";
          unmuteMessage = "{{USER}} unmuted";
          voice = null;
          volume = 1.0;
        };
        vcNarratorCustom = {
          enable = false;
          announceOthersDeafen = false;
          announceOthersMute = false;
          announceOthersStream = false;
          announceSelfStream = false;
          customVoice = "en_us_001";
          ignoreSelf = false;
          joinMessage = "{{DISPLAY_NAME}} joined";
          latinOnly = false;
          leaveMessage = "{{DISPLAY_NAME}} left";
          moveMessage = "{{DISPLAY_NAME}} moved to {{CHANNEL}}";
          rate = 1.0;
          sayOwnName = false;
          stateChangeCooldownMs = 1500.0;
          stateChangeFilterList = "";
          stateChangeFilterMode = "off";
          userVoiceMap = "";
          volume = 1.0;
        };
        vencordToolbox = {
          enable = false;
          showPluginMenu = true;
        };
        viewIcons = {
          enable = false;
          format = "webp";
          imgSize = "1024";
        };
        viewRaw = {
          enable = false;
          clickMethod = "Left";
        };
        viewRawVariant = {
          enable = false;
        };
        voiceButtons = {
          enable = false;
          buttonPosition = "left";
          disableVideo = true;
          muteSoundboard = true;
          serverSelf = false;
          showButtonsSelf = "display";
          showChatButton = true;
          showDeafenButton = true;
          showMuteButton = true;
          useServer = false;
          whichNameToShow = "both";
        };
        voiceChannelLog = {
          enable = false;
          ignoreBlockedUsers = false;
          mode = 1;
          voiceChannelChatSelf = true;
          voiceChannelChatSilent = true;
          voiceChannelChatSilentSelf = false;
        };
        voiceChatDoubleClick = {
          enable = false;
        };
        voiceChatUtilities = {
          enable = false;
          waitAfter = 5.0;
          waitSeconds = 2.0;
        };
        voiceDownload = {
          enable = false;
        };
        voiceJoinMessages = {
          enable = false;
          allowedFriends = "";
          friendDirectMessages = true;
          friendDirectMessagesSelf = false;
          friendDirectMessagesShowMemberCount = false;
          friendDirectMessagesShowMembers = true;
          friendDirectMessagesSilent = false;
          ignoreBlockedUsers = true;
          ignoredFriends = "";
        };
        voiceMessageTranscriber = {
          enable = false;
          quantized = true;
          selectedModel = "Xenova/whisper-base";
        };
        voiceMessages = {
          enable = false;
          echoCancellation = true;
          noiseSuppression = true;
        };
        voiceRejoin = {
          enable = false;
          applyOnlyToDms = false;
          preventReconnectIfCallEnded = "both";
          rejoinDelay = 2.0;
          rejoinTimeout = 30.0;
        };
        volumeBooster = {
          enable = false;
          multiplier = 2.0;
        };
        waitForSlot = {
          enable = false;
          autoJoin = false;
          notificationSound = true;
        };
        wallpaperFree = {
          enable = false;
        };
        webContextMenus = {
          enable = false;
          addBack = false;
        };
        webKeybinds = {
          enable = false;
        };
        webRichPresence = {
          enable = false;
        };
        webScreenShareFixes = {
          enable = false;
        };
        webpackTarball = {
          enable = false;
          patched = true;
        };
        whitelistedEmojis = {
          enable = false;
          defaultEmojis = true;
          disableToasts = false;
          serverEmojis = true;
        };
        whoReacted = {
          enable = false;
          avatarClick = false;
        };
        whosWatching = {
          enable = false;
          showPanel = true;
        };
        wigglyText = {
          enable = false;
          intensity = 4.0;
        };
        writeUpperCase = {
          enable = false;
          blockedWords = "http, https, ok";
        };
        XSOverlay = {
          enable = false;
          botNotifications = false;
          callNotifications = true;
          channelPingColor = "#8a2be2";
          dmNotifications = true;
          groupDmNotifications = true;
          lengthBasedTimeout = true;
          opacity = 1.0;
          pingColor = "#7289da";
          preferUDP = false;
          serverNotifications = true;
          soundPath = "default";
          timeout = 3;
          volume = 0.2;
          webSocketPort = 42070;
        };
        youtubeAdblock = {
          enable = true;
        };
      };
    };

    # Client-specific options
    discord = {
      enable = true;
      branch = "stable";
      installPackage = true;
      openASAR.enable = true;
      vencord = {
        enable = true;
        unstable = false;
      };
      equicord = {
        enable = false;
      };
      settings = { };
      autoscroll = {
        enable = false;
      };
    };

    vesktop = {
      enable = false;
      installPackage = true;
      useSystemVencord = true;
      settings = { };
      state = { };
      autoscroll = {
        enable = false;
      };
    };

    dorion = {
      enable = false;
      installPackage = true;
      blur = "none";
      blurCss = true;
      clientMods = [
        "Shelter"
        "Vencord"
      ];
      clientPlugins = true;
      clientType = "default";
      desktopNotifications = false;
      disableHardwareAccel = false;
      extraSettings = { };
      keybinds = { };
      keybindsEnabled = true;
      multiInstance = false;
      openOnStartup = false;
      profile = "default";
      proxyUri = "";
      pushToTalk = false;
      pushToTalkKeys = [ "RControl" ];
      rpcIpcConnector = true;
      rpcProcessScanner = true;
      rpcSecondaryEvents = true;
      rpcServer = false;
      rpcWebsocketConnector = true;
      startMaximized = false;
      startupMinimized = false;
      streamerModeDetection = false;
      sysTray = false;
      theme = "none";
      themes = [ "none" ];
      trayIconEnabled = true;
      unreadBadge = true;
      updateNotify = true;
      useNativeTitlebar = false;
      win7StyleNotifications = false;
      zoom = "1.0";
      autoClearCache = false;
      cacheCss = false;
    };
  };
}
